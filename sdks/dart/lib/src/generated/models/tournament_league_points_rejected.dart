// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_placement_points_error.dart';

/// auto generated
/// A 400 from this endpoint. A superset of the standard Error body: `reason` adds a machine-readable placement-table reject code when that is what failed.
class TournamentLeaguePointsRejected extends ApiException implements Parsable {
    ///  The details property
    String? details;
    ///  The error property
    String? error;
    ///  Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
    TournamentPlacementPointsError? reason;
    /// Instantiates a new [TournamentLeaguePointsRejected] and sets the default values.
    TournamentLeaguePointsRejected( {
        super.message,
        super.statusCode,
        super.responseHeaders,
        super.innerExceptions,
        this.details,
        this.error,
        this.reason,
    });
    /// Creates a copy of the object.
    @override
    TournamentLeaguePointsRejected copyWith({int? statusCode, String? message, Map<String, List<String>>? responseHeaders, Iterable<Object?>? innerExceptions, String? details, String? error, TournamentPlacementPointsError? reason }){
        return TournamentLeaguePointsRejected(
        message : message ?? this.message, 
        statusCode : statusCode ?? this.statusCode, 
        responseHeaders : responseHeaders ?? this.responseHeaders, 
        innerExceptions : innerExceptions ?? this.innerExceptions, 
        details : details ?? this.details, 
        error : error ?? this.error, 
        reason : reason ?? this.reason, 
        );
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentLeaguePointsRejected createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentLeaguePointsRejected();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['details'] = (node) => details = node.getStringValue();
        deserializerMap['error'] = (node) => error = node.getStringValue();
        deserializerMap['reason'] = (node) => reason = node.getEnumValue<TournamentPlacementPointsError>((stringValue) => TournamentPlacementPointsError.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('details', details);
        writer.writeStringValue('error', error);
        writer.writeEnumValue<TournamentPlacementPointsError>('reason', reason, (e) => e?.value);
    }
}
