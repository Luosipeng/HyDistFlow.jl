"""
    read_load_data(file_path)

Read load time series data from an Excel file.

# Arguments
- `file_path`: Path to the Excel file containing load data

# Returns
- `time_column`: Vector containing time values from the first column
- `time_str_column`: Vector containing time string representations from the second column
- `load_names`: Vector of load names extracted from column headers
- `data`: DataFrame containing the entire load dataset

# Description
This function reads load time series data from an Excel file into a DataFrame.
It extracts the time values (first column), time string representations (second column),
and the names of the loads from the column headers. The function returns these
components separately along with the complete DataFrame for further processing.
"""
function read_load_data(file_path)
    # Read Excel file into DataFrame
    data = DataFrame(XLSX.readtable(file_path, 1, header=true))
    
    # Extract time column and time string column
    time_column = data[!, 1]  # First column is time
    time_str_column = data[!, 2]  # Second column is time string
    
    # Get load names (column names)
    load_names = names(data)[3:end]
    
    return time_column, time_str_column, load_names, data
end
