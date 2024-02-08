#!/bin/bash
echo "Hello, World!"

source C:/Users/Vasse/Bureau/ProjetAutomatisationAppel/config/db_config.sh

PROJECT_PATH='C:/Users/Vasse/Bureau/ProjetAutomatisationAppel'

source $PROJECT_PATH/venv/bin/activate

python $PROJECT_PATH/Scripts/extract_data.py
python $PROJECT_PATH/scripts/convert_to_xml.py
python $PROJECT_PATH/scripts/send_to_app.py

deactivate

echo "Workflow completed at $(date)" >> $PROJECT_PATH/logs/workflow.log