// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_bracket_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\bracket
class BracketRequestBuilder extends BaseRequestBuilder<BracketRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    BracketRequestBuilder clone() {
        return BracketRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [BracketRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BracketRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/bracket", pathParameters) ;
    /// Instantiates a new [BracketRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BracketRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/bracket", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the rounds, bracket nodes, and participant display map for a tournament, resolved by slug. Empty until the tournament starts and matches are generated. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentBracketResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentBracketResponse>(requestInfo, TournamentBracketResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the rounds, bracket nodes, and participant display map for a tournament, resolved by slug. Empty until the tournament starts and matches are generated. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
