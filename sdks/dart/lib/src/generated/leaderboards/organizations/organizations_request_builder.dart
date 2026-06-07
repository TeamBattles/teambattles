// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/organization_leaderboard_response.dart';
import './item/with_identifier_item_request_builder.dart';
import './organizations_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \leaderboards\organizations
class OrganizationsRequestBuilder extends BaseRequestBuilder<OrganizationsRequestBuilder> {
    /// Gets an item from the teambattles.leaderboards.organizations.item collection
    ///  [identifier] Organization slug or Convex organization ID.
    WithIdentifierItemRequestBuilder byIdentifier(String identifier) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('identifier', () => identifier);
        return WithIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    OrganizationsRequestBuilder clone() {
        return OrganizationsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OrganizationsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrganizationsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leaderboards/organizations{?gameSlug*,limit*,sortBy*}", pathParameters) ;
    /// Instantiates a new [OrganizationsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrganizationsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leaderboards/organizations{?gameSlug*,limit*,sortBy*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns active, public, non-disabled organizations ranked from active, enabled, non-private team stats. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OrganizationLeaderboardResponse?> getAsync([void Function(RequestConfiguration<OrganizationsRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationLeaderboardResponse>(requestInfo, OrganizationLeaderboardResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns active, public, non-disabled organizations ranked from active, enabled, non-private team stats. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<OrganizationsRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<OrganizationsRequestBuilderGetQueryParameters>(requestConfiguration, () => OrganizationsRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
