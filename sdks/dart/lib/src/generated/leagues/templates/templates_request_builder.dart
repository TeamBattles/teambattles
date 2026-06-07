// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/league_templates.dart';
import '../../models/league_templates_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\templates
class TemplatesRequestBuilder extends BaseRequestBuilder<TemplatesRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    TemplatesRequestBuilder clone() {
        return TemplatesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TemplatesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TemplatesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/templates", pathParameters) ;
    /// Instantiates a new [TemplatesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TemplatesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/templates", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns league rule templates visible to authenticated API clients, optionally filtered by game or official status. Requires leagues.league_public:read.
    ///  [body] Template filters.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueTemplates?> postAsync(LeagueTemplatesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueTemplates>(requestInfo, LeagueTemplates.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns league rule templates visible to authenticated API clients, optionally filtered by game or official status. Requires leagues.league_public:read.
    ///  [body] Template filters.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(LeagueTemplatesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
