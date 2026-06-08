// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_settings_response.dart';
import './enabled/enabled_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\settings
class SettingsRequestBuilder extends BaseRequestBuilder<SettingsRequestBuilder> {
    ///  The enabled property
    EnabledRequestBuilder get enabled {
        return EnabledRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    SettingsRequestBuilder clone() {
        return SettingsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SettingsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SettingsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/settings", pathParameters) ;
    /// Instantiates a new [SettingsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SettingsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/settings", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns full league settings for admin tooling. Requires a league-operator key bound to the league and leagues.settings_read:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueSettingsResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueSettingsResponse>(requestInfo, LeagueSettingsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns full league settings for admin tooling. Requires a league-operator key bound to the league and leagues.settings_read:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
