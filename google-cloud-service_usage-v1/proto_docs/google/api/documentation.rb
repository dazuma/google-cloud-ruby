# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Api
    # `Documentation` provides the information for describing a service.
    #
    # Example:
    # <pre><code>documentation:
    #   summary: >
    #     The Google Calendar API gives access
    #     to most calendar features.
    #   pages:
    #   - name: Overview
    #     content: &#40;== include google/foo/overview.md ==&#41;
    #   - name: Tutorial
    #     content: &#40;== include google/foo/tutorial.md ==&#41;
    #     subpages:
    #     - name: Java
    #       content: &#40;== include google/foo/tutorial_java.md ==&#41;
    #   rules:
    #   - selector: google.calendar.Calendar.Get
    #     description: >
    #       ...
    #   - selector: google.calendar.Calendar.Put
    #     description: >
    #       ...
    # </code></pre>
    # Documentation is provided in markdown syntax. In addition to
    # standard markdown features, definition lists, tables and fenced
    # code blocks are supported. Section headers can be provided and are
    # interpreted relative to the section nesting of the context where
    # a documentation fragment is embedded.
    #
    # Documentation from the IDL is merged with documentation defined
    # via the config at normalization time, where documentation provided
    # by config rules overrides IDL provided.
    #
    # A number of constructs specific to the API platform are supported
    # in documentation text.
    #
    # In order to reference a proto element, the following
    # notation can be used:
    # <pre><code>&#91;fully.qualified.proto.name]&#91;]</code></pre>
    # To override the display text used for the link, this can be used:
    # <pre><code>&#91;display text]&#91;fully.qualified.proto.name]</code></pre>
    # Text can be excluded from doc using the following notation:
    # <pre><code>&#40;-- internal comment --&#41;</code></pre>
    #
    # A few directives are available in documentation. Note that
    # directives must appear on a single line to be properly
    # identified. The `include` directive includes a markdown file from
    # an external source:
    # <pre><code>&#40;== include path/to/file ==&#41;</code></pre>
    # The `resource_for` directive marks a message to be the resource of
    # a collection in REST view. If it is not specified, tools attempt
    # to infer the resource from the operations in a collection:
    # <pre><code>&#40;== resource_for v1.shelves.books ==&#41;</code></pre>
    # The directive `suppress_warning` does not directly affect documentation
    # and is documented together with service config validation.
    # @!attribute [rw] summary
    #   @return [::String]
    #     A short description of what the service does. The summary must be plain
    #     text. It becomes the overview of the service displayed in Google Cloud
    #     Console.
    #     NOTE: This field is equivalent to the standard field `description`.
    # @!attribute [rw] pages
    #   @return [::Array<::Google::Api::Page>]
    #     The top level pages for the documentation set.
    # @!attribute [rw] rules
    #   @return [::Array<::Google::Api::DocumentationRule>]
    #     A list of documentation rules that apply to individual API elements.
    #
    #     **NOTE:** All service configuration rules follow "last one wins" order.
    # @!attribute [rw] documentation_root_url
    #   @return [::String]
    #     The URL to the root of documentation.
    # @!attribute [rw] service_root_url
    #   @return [::String]
    #     Specifies the service root url if the default one (the service name
    #     from the yaml file) is not suitable. This can be seen in any fully
    #     specified service urls as well as sections that show a base that other
    #     urls are relative to.
    # @!attribute [rw] overview
    #   @return [::String]
    #     Declares a single overview page. For example:
    #     <pre><code>documentation:
    #       summary: ...
    #       overview: &#40;== include overview.md ==&#41;
    #     </code></pre>
    #     This is a shortcut for the following declaration (using pages style):
    #     <pre><code>documentation:
    #       summary: ...
    #       pages:
    #       - name: Overview
    #         content: &#40;== include overview.md ==&#41;
    #     </code></pre>
    #     Note: you cannot specify both `overview` field and `pages` field.
    class Documentation
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # A documentation rule provides information about individual API elements.
    # @!attribute [rw] selector
    #   @return [::String]
    #     The selector is a comma-separated list of patterns for any element such as
    #     a method, a field, an enum value. Each pattern is a qualified name of the
    #     element which may end in "*", indicating a wildcard. Wildcards are only
    #     allowed at the end and for a whole component of the qualified name,
    #     i.e. "foo.*" is ok, but not "foo.b*" or "foo.*.bar". A wildcard will match
    #     one or more components. To specify a default for all applicable elements,
    #     the whole pattern "*" is used.
    # @!attribute [rw] description
    #   @return [::String]
    #     Description of the selected proto element (e.g. a message, a method, a
    #     'service' definition, or a field). Defaults to leading & trailing comments
    #     taken from the proto source definition of the proto element.
    # @!attribute [rw] deprecation_description
    #   @return [::String]
    #     Deprecation description of the selected element(s). It can be provided if
    #     an element is marked as `deprecated`.
    class DocumentationRule
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Represents a documentation page. A page can contain subpages to represent
    # nested documentation set structure.
    # @!attribute [rw] name
    #   @return [::String]
    #     The name of the page. It will be used as an identity of the page to
    #     generate URI of the page, text of the link to this page in navigation,
    #     etc. The full page name (start from the root page name to this page
    #     concatenated with `.`) can be used as reference to the page in your
    #     documentation. For example:
    #     <pre><code>pages:
    #     - name: Tutorial
    #       content: &#40;== include tutorial.md ==&#41;
    #       subpages:
    #       - name: Java
    #         content: &#40;== include tutorial_java.md ==&#41;
    #     </code></pre>
    #     You can reference `Java` page using Markdown reference link syntax:
    #     `[Java][Tutorial.Java]`.
    # @!attribute [rw] content
    #   @return [::String]
    #     The Markdown content of the page. You can use ```(== include {path}
    #     ==)``` to include content from a Markdown file. The content can be used
    #     to produce the documentation page such as HTML format page.
    # @!attribute [rw] subpages
    #   @return [::Array<::Google::Api::Page>]
    #     Subpages of this page. The order of subpages specified here will be
    #     honored in the generated docset.
    class Page
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
