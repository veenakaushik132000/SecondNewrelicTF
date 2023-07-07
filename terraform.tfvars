data = {
  "d1" = {
    "account_id"                   = 3932072
    "name"                         = "Alert1"
    "description"                  = "Alerts"
    "runbook_url"                  = "https://www.example.com"
    "violation_time_limit_seconds" = 3600
    "aggregation_method"           = "event_flow"
    "operator"                     = "above"
    "threshold"                    = 5.5
    "threshold_duration"           = 50
    "threshold_occurrences"        = "ALL"
    "enabled"                      = true
    "query" = "SELECT max(duration) FROM Transaction WHERE appName = 'FoodMe'"
  }

  "d2" = {
    "account_id"                   = 3932072
    "name"                         = "Alert1"
    "description"                  = "Alerts"
    "runbook_url"                  = "https://www.example.com"
    "violation_time_limit_seconds" = 3600
    "aggregation_method"           = "event_flow"
    "operator"                     = "above"
    "threshold"                    = 5.5
    "threshold_duration"           = 60
    "threshold_occurrences"        = "ALL"
    "enabled"                      = true
    "query" = "SELECT max(duration) FROM Transaction WHERE appName = 'FoodMe'"
  }
}