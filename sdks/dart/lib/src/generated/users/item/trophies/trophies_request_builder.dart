// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './trophies_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \users\{identifier}\trophies
class TrophiesRequestBuilder extends BaseRequestBuilder<TrophiesRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    TrophiesRequestBuilder clone() {
        return TrophiesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TrophiesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TrophiesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}/trophies", pathParameters) ;
    /// Instantiates a new [TrophiesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TrophiesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}/trophies", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns user trophies for public profiles or self. Event linkage fields such as matchId and tournamentId are omitted. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TrophiesGetResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TrophiesGetResponse>(requestInfo, TrophiesGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns user trophies for public profiles or self. Event linkage fields such as matchId and tournamentId are omitted. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
