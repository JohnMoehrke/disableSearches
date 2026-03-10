
#### Bundles to Disable Searches

- [Multiple Bundles](Bundle-disable-searches-core.html)
- [One Big Bundle](Bundle-disable-searches.html)
- [One minimal Bundle](Bundle-disable-searches-min.html) - don't turn off elements we never populate (63 of 128)
- Failed [Patch Bundle](Bundle-patch-disable-searches.html) - Failed because HAPI doesn't really have the SearchParameter resources available to be patched. They are virtual.
- should we remove the search parameters on the SearchParameter resource? Unclear which ones HAPI itself needs.

### Source

The source code for this Implementation Guide can be found on [GitHub](https://github.com/JohnMoehrke/disableSearches)

#### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

#### Dependency Table

{% include dependency-table.xhtml %}

#### Globals Table

{% include globals-table.xhtml %}

#### IP Statements

{% include ip-statements.xhtml %}
