---
seo:
  title: Real-time alerting using geolocation 
  description: This ksqlDB recipe shows real-time, personalized location based alerts. User and merchant data is sourced from a database and joined against real-time user locations (e.g. from a mobile device) to provide alerts when a user passes close to a participating merchant.
---

# Real-time alerting using geolocation 

Customers are beginning to demand realtime interactive mobile applications. Providing users with contextualized experiences in real-time has become a standard in modern applications. This recipe shows how ksqlDB can help build personalized location based alerts in real-time from user provided mobile geolocation data.

![mobile](../../img/loyalty.png)

## Step by step

### Set up your environment
 
Provision a Kafka cluster in [Confluent Cloud](https://www.confluent.io/confluent-cloud/tryfree/?utm_source=github&utm_medium=ksqldb_recipes&utm_campaign=datacenter).

--8<-- "docs/shared/ccloud_setup.md"

### Read the data in

--8<-- "docs/shared/connect.md"

```sql
--8<-- "docs/real-time-analytics/location-based-alerting/source.json"
```

--8<-- "docs/shared/manual_insert.md"

### ksqlDB code

--8<-- "docs/shared/ksqlb_processing_intro.md"

```sql
--8<-- "docs/real-time-analytics/location-based-alerting/process.sql"
```

--8<-- "docs/shared/manual_cue.md"

```sql
--8<-- "docs/real-time-analytics/location-based-alerting/manual.sql"
```

### Cleanup

--8<-- "docs/shared/cleanup.md"

## Explanation

