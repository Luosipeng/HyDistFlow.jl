# API Reference

## Input Interface
```@autodocs
Modules = [Utils]
Pages   = ["ETAPImporter.jl","matlab2julia.jl","read_irradiance_data","read_load_data","read_price_data","read_storage_profile_data"]
Order   = [:type, :function, :macro, :constant]
Filter = f -> !(f in [Utils.load_vpps!,Utils.safe_get_value,Utils.parse_bool])
```

## Data Structure
```@autodocs
Modules = [Utils]
Pages   = ["Types.jl"]
Order   = [:type, :function, :macro, :constant]
```

## Inner Interface
```@autodocs
Modules = [Utils]
Pages   = ["juliapowercase2jpc.jl","juliapowercase2jpc_3ph.jl"]
Order   = [:type, :function, :macro, :constant]
```

## Other Functions
```@autodocs
Modules = [Utils]
Pages   = ["extract_island.jl","find_island.jl"]
Order   = [:type, :function, :macro, :constant]
```