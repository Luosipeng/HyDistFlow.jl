"""
    read_storage_profile_data(file_path)

Read storage profile time series data from an Excel file.

# Arguments
- `file_path`: Path to the Excel file containing storage profile data

# Returns
- `hour_column`: Vector containing hour values from the first column
- `time_str_column`: Vector containing time string representations from the second column
- `data`: DataFrame containing the entire storage profile dataset

# Description
This function reads storage profile time series data from an Excel file into a DataFrame.
It extracts the hour values (first column) and time string representations (second column).
The function returns these components separately along with the complete DataFrame for further processing.
"""
function read_storage_profile_data(file_path)
    # Read Excel file into DataFrame
    data = DataFrame(XLSX.readtable(file_path, 1, header=true))
    
    # Extract hour column
    hour_column = data[!, 1]  # First column is hour
    # Extract time string column
    time_str_column = data[!, 2]  # Second column is time string
    
    return hour_column, time_str_column, data
end