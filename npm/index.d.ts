declare module '@apiverve/contactextractor' {
  export interface contactextractorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface contactextractorResponse {
    status: string;
    error: string | null;
    data: ContactExtractorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ContactExtractorData {
      url:           null | string;
      emails:        (null | string)[];
      phones:        any[];
      places:        (null | string)[];
      emailCount:    number | null;
      phoneCount:    number | null;
      placeCount:    number | null;
      uniqueDomains: (null | string)[];
  }

  export default class contactextractorWrapper {
    constructor(options: contactextractorOptions);

    execute(callback: (error: any, data: contactextractorResponse | null) => void): Promise<contactextractorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: contactextractorResponse | null) => void): Promise<contactextractorResponse>;
    execute(query?: Record<string, any>): Promise<contactextractorResponse>;
  }
}
