# Label of the template file to use.
_TEMPLATE = "//:osi_version.proto.in"

def _generate_osi_version_proto_impl(ctx):
    ctx.actions.expand_template(
        template = ctx.file._template,
        output = ctx.outputs.source_file,
        substitutions = {
            "{OSI_MAJOR}": ctx.attr.major,
            "{OSI_MINOR}": ctx.attr.minor,
            "{OSI_PATCH}": ctx.attr.patch,
        },
    )

generate_osi_version_proto = rule(
    implementation = _generate_osi_version_proto_impl,
    attrs = {
        "major": attr.string(mandatory = True),
        "minor": attr.string(mandatory = True),
        "patch": attr.string(mandatory = True),
        "_template": attr.label(
            default = Label(_TEMPLATE),
            allow_single_file = True,
        ),
    },
    outputs = {"source_file": "%{name}.proto"},
)

