// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Standard API error response.
class Error extends ApiException implements Parsable {
    ///  Optional human-readable explanation. Often absent on auth/permission errors.
    String? details;
    ///  Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
    String? errorProp;
    /// Instantiates a new [Error] and sets the default values.
    Error( {
        super.message,
        super.statusCode,
        super.responseHeaders,
        super.innerExceptions,
        this.details,
        this.errorProp,
    });
    /// Creates a copy of the object.
    @override
    Error copyWith({int? statusCode, String? message, Map<String, List<String>>? responseHeaders, Iterable<Object?>? innerExceptions, String? details, String? errorProp }){
        return Error(
        message : message ?? this.message, 
        statusCode : statusCode ?? this.statusCode, 
        responseHeaders : responseHeaders ?? this.responseHeaders, 
        innerExceptions : innerExceptions ?? this.innerExceptions, 
        details : details ?? this.details, 
        errorProp : errorProp ?? this.errorProp, 
        );
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Error createFromDiscriminatorValue(ParseNode parseNode) {
        return Error();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['details'] = (node) => details = node.getStringValue();
        deserializerMap['error'] = (node) => errorProp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('details', details);
        writer.writeStringValue('error', errorProp);
    }
}
