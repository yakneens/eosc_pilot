import os.path
import datetime
import re

samples_path = "/root/oneclient/EOSCpilot-PanCancer/data"
release_1_date = "20120522"
release_2_date = "20130415"
filename_re = ".*\.mapped.*{}\.bam$"
counter = 0

def write_config_to_file(config, config_location):
    
    run_uuid = str(uuid.uuid4())
    
    my_file = open("{}/{}.json".format(config_location, run_uuid), "w")
    json.dump(config, my_file)
    my_file.close()

def generate_config_objects(available_samples, num_runs, config_location):
    for this_run in range(num_runs):
    
        
        this_config_data = {"sample": {
                                "donor_index": available_samples[this_run].index,
                                "sample_id": available_samples[this_run].sample_id.split(",")[0],
                                "sample_location": available_samples[this_run].sample_location
                                }
                            }
        
        yield this_config_data


for root, dirs, files in os.walk(samples_path):
    for my_file in files:
        if re.match(filename_re.format(release_1_date), my_file):
            print os.path.join(root, my_file)


