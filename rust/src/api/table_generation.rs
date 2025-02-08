use std::ops::ControlFlow;
use std::fs::File;
use std::io::Write;
use std::path::PathBuf;

use log::trace;
use xelis_common::crypto::ecdlp;
use xelis_wallet::precomputed_tables;

use crate::api::progress_report::{add_progress_report, Report};

pub struct LogProgressTableGenerationReportFunction;

impl ecdlp::ProgressTableGenerationReportFunction for LogProgressTableGenerationReportFunction {
    fn report(&self, progress: f64, step: ecdlp::ReportStep) -> ControlFlow<()> {
        let step_str = format!("{:?}", step);
        add_progress_report(Report::TableGeneration {
            progress,
            step: step_str,
            message: None,
        });
        trace!("Progress: {:.2}% on step {:?}", progress * 100.0, step);

        ControlFlow::Continue(())
    }
}

pub async fn precomputed_tables_exist(precomputed_tables_path: String) -> bool {
    precomputed_tables::has_precomputed_tables(
        Some(precomputed_tables_path.as_str()),
        precomputed_tables::L1_FULL,
    )
    .await
    .expect("Failed to check precomputed tables existence")
}

pub fn save_precomputed_tables(tables: &PrecomputedTablesShared, file_path: PathBuf) -> Result<(), String> {
    let mut file = File::create(file_path).map_err(|e| e.to_string())?;
    file.write_all(tables.get()).map_err(|e| e.to_string())?;
    Ok(())
}