resource "newrelic_alert_policy" "alert" {
  name = "Policy"
}

resource "newrelic_nrql_alert_condition" "alertcondition" {
  for_each = var.data
  account_id                   = each.value.account_id
  name                         = each.value.name
  policy_id                    = newrelic_alert_policy.alert.id
  description                  = each.value.description
  enabled                      = each.value.enabled
  runbook_url                  = each.value.runbook_url
  violation_time_limit_seconds = each.value.violation_time_limit_seconds

  nrql {
    query = each.value.query
  }

  critical {
    operator              = each.value.operator
    threshold             = each.value.threshold
    threshold_duration    = each.value.threshold_duration
    threshold_occurrences = each.value.threshold_occurrences
  }
}