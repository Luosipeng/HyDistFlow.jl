# API Reference

```@meta
CurrentModule = HyDistFlow
```

## Input Interface
```@autodocs
Modules = [TimeDomainPowerFlow]
Pages   = ["runtdpf.jl"]
Order   = [:type, :function, :macro, :constant]
Filter  = t -> !(t in [runtdpf, create_time_series_loads, create_time_series_prices,create_time_series_irradiance, extract_load_matrix_by_islands, create_time_series_storage_profile])
```

## TimeSeries Functions
```@autodocs
Modules = [TimeDomainPowerFlow]
Pages   = ["runtdpf.jl","run_single_day.jl","run_dynamic_dispatch.jl"]
Order   = [:type, :function, :macro, :constant]
Filter  = t -> !(t in [create_time_series_loads, create_time_series_prices,create_time_series_irradiance,extract_load_matrix_by_islands, create_time_series_storage_profile])
```

## Visualization
```@autodocs
Modules = [TimeDomainPowerFlow]
Pages   = ["plot_flow_violations.jl","plot_losses_time_series.jl","plot_PD_time_series.jl","plot_voltage_time_series.jl","record_voltage_violation.jl"]
Order   = [:type, :function, :macro, :constant]
```

## Other Functions
```@autodocs
Modules = [TimeDomainPowerFlow]
Pages   = ["renumber_hybrid_system.jl","runtdpf.jl"]
Order   = [:type, :function, :macro, :constant]
Filter  = t -> !(t in [runtdpf])
```