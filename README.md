# java-corvus-json-schema

A [Bowtie](https://github.com/bowtie-json-schema/bowtie) test harness for
[corvus-json-schema](https://central.sonatype.com/artifact/io.github.corvus-dotnet/corvus-json-schema), the Java port
of [Corvus.JsonSchema](https://github.com/corvus-dotnet/Corvus.JsonSchema)'s V5 evaluator, which compiles a schema to
JVM bytecode.

Its image is published to `ghcr.io/bowtie-json-schema/java-corvus-json-schema` and run via
`bowtie run -i java-corvus-json-schema`.

The harness compiles each case's schema with the case's `registry` as the document resolver and validates each
instance. For `annotations` output it evaluates through a verbose results collector and reports each annotation with
its instance location and `#…` keyword location. An exception, or an evaluation beyond the maximum depth, is reported
as an error for that case or instance. The harness lives in the library's package
(`io.github.corvusdotnet.jsonschema`) to read requests through the document's own accessors.

The library's version is pinned in `pom.xml`, which Dependabot keeps at the latest release.
