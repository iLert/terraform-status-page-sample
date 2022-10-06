data "ilert_escalation_policy" "default" {
  name = "Default"
}

resource "ilert_alert_source" "example" {
  name              = "Example alert source from terraform"
  integration_type  = "API"
  escalation_policy = data.ilert_escalation_policy.default.id
}

resource "ilert_service" "example" {
  name = "blogpost_example"
}

resource "ilert_status_page" "example" {
  name       = "My Statuspage"
  subdomain  = "example_statuspage.ilert.io"
  visibility = "PRIVATE"

  service {
    id = ilert_service.example.id
  }
}

resource "ilert_automation_rule" "example" {
  alert_type     = "CREATED"
  service_status = "DEGRADED"
  service {
    id = ilert_service.example.id
  }
  alert_source {
    id = ilert_alert_source.example.id
  }
}
