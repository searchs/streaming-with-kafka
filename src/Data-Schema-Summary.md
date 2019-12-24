### Data Schema - Apache Avro Summary
* Data Schema - Define the shape of a particular kind of data. Specifically, data schemas define the expected fields, their names, and value types for those fields. Data schemas may also indicate whether fields are required or optional.
* Apache Avro - A data serialization framework which includes facilities for defining and communicating data schemas. Avro is widely used in the Kafka ecosystem and data engineering generally.
* Record (Avro) - A single encoded record in the defined Avro format
* Primitive Type (Avro) - In Avro, a primitive type is a type which requires no additional specification - null, boolean, int, long, float, double, bytes, string.
* Complex Type (Avro) - In Avro, a complex type models data structures which may involve nesting or other advanced functionality: records, enums, maps, arrays, unions, fixed.
* Schema Evolution - The process of modifying an existing schema with new, deleted, or modified fields.
* Schema Compatibility - Determines whether or not two given versions of a schema are usable by a given client
* Backward Compatibility - means that consumer code developed against the most recent version of an Avro Schema can use data using the prior version of a schema without modification.
* Forward Compatibility - means that consumer code developed against the previous version of an Avro Schema can consume data using the newest version of a schema without modification.
* Full Compatibility - means that consumers developed against the latest schema can consume data using the previous schema, and that consumers developed against the previous schema can consume data from the latest schema as well. In other words, full compatibility means that a schema change is both forward and backward compatible.
* None Compatibility - disables compatibility checking by Schema Registry.

#### Schema Registry - Summary
* Provides an HTTP REST API for managing Avro schemas
* Many Kafka clients natively support Schema Registry interactions for you
* Reduces network overhead, allowing producers and consumers to register schemas one time
* Simplifies using Avro, reducing the barrier to entry for developers
* Uses a Kafka topic to store state
* Deployed as one or more web servers, with one leader
* Uses ZooKeeper to manage elections
* Schema Registry - Optional Further Research
* confluent_kafka_python [Avro and Schema Registry support](https://docs.confluent.io/current/clients/confluent-kafka-python/index.html?highlight=partition#module-confluent_kafka.avro)
* [Schema Registry Overview](https://docs.confluent.io/current/schema-registry/index.html)
* [Schema Registry HTTP API Documentation](https://docs.confluent.io/current/schema-registry/develop/api.html)