import { type StatsRequestBuilder } from './stats/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/dashboard
 */
export interface DashboardRequestBuilder extends BaseRequestBuilder<DashboardRequestBuilder> {
    /**
     * The stats property
     */
    get stats(): StatsRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const DashboardRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/dashboard";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const DashboardRequestBuilderNavigationMetadata: Record<Exclude<keyof DashboardRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map