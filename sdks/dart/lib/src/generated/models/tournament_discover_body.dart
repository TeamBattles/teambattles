// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_format.dart';
import './tournament_status.dart';

/// auto generated
/// Filters for public tournament discovery.
class TournamentDiscoverBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Filter by bracket format.
    TournamentFormat? format;
    ///  Filter to a single game by Convex ID.
    String? gameId;
    ///  Page size, 1-50.
    int? limit;
    ///  1-based page number.
    int? page;
    ///  Case-insensitive name substring. Ignored below 2 characters.
    String? search;
    ///  Filter by lifecycle status.
    TournamentStatus? status;
    /// Instantiates a new [TournamentDiscoverBody] and sets the default values.
    TournamentDiscoverBody() :  
        additionalData = {},
        limit = 12,
        page = 1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentDiscoverBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentDiscoverBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['format'] = (node) => format = node.getEnumValue<TournamentFormat>((stringValue) => TournamentFormat.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['limit'] = (node) => limit = node.getIntValue();
        deserializerMap['page'] = (node) => page = node.getIntValue();
        deserializerMap['search'] = (node) => search = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<TournamentStatus>((stringValue) => TournamentStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<TournamentFormat>('format', format, (e) => e?.value);
        writer.writeStringValue('gameId', gameId);
        writer.writeIntValue('limit', limit);
        writer.writeIntValue('page', page);
        writer.writeStringValue('search', search);
        writer.writeEnumValue<TournamentStatus>('status', status, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
