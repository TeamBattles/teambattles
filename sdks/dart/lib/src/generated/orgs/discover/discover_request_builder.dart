// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './discover_get_response.dart';
import './discover_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \orgs\discover
class DiscoverRequestBuilder extends BaseRequestBuilder<DiscoverRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    DiscoverRequestBuilder clone() {
        return DiscoverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DiscoverRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DiscoverRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/discover{?limit*,search*}", pathParameters) ;
    /// Instantiates a new [DiscoverRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DiscoverRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/discover{?limit*,search*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a neutral, ranked discovery list of active, public, non-disabled organizations. Each result is a small summary (id, slug, name, tag, avatarUrl, visibility); `count` is the size of the returned page, not a total. Results are sorted featured organizations first, then by most wins, then newest. `limit` is 1-100 (default 50); ranking is computed over at most the first 1000 candidate organizations and there is no cursor pagination, so the response is a single ranked page. `search` filters by case-insensitive name substring and is only applied when it is at least 2 characters (shorter values are ignored). Unlike an in-app feed, results do not exclude organizations the API key owner belongs to and do not include membership or join-request flags. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<DiscoverGetResponse?> getAsync([void Function(RequestConfiguration<DiscoverRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DiscoverGetResponse>(requestInfo, DiscoverGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a neutral, ranked discovery list of active, public, non-disabled organizations. Each result is a small summary (id, slug, name, tag, avatarUrl, visibility); `count` is the size of the returned page, not a total. Results are sorted featured organizations first, then by most wins, then newest. `limit` is 1-100 (default 50); ranking is computed over at most the first 1000 candidate organizations and there is no cursor pagination, so the response is a single ranked page. `search` filters by case-insensitive name substring and is only applied when it is at least 2 characters (shorter values are ignored). Unlike an in-app feed, results do not exclude organizations the API key owner belongs to and do not include membership or join-request flags. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DiscoverRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DiscoverRequestBuilderGetQueryParameters>(requestConfiguration, () => DiscoverRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
