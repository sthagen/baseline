import { IPersistenceService } from './..';

export class Excel implements IPersistenceService {

  private config: any;

  constructor(config: any) {
      this.config = config;
  }

  alert(params: any): Promise<any> {
    throw new Error('not implemented');
  }

  subscribe(params: any): Promise<any> {
    throw new Error('not implemented');
  }

  unsubscribe(params: any): Promise<any> {
    throw new Error('not implemented');
  }

  query(q: string): Promise<any> {
    throw new Error('not implemented');
  }

  read(id: string): Promise<any> {
    throw new Error('not implemented');
  }

  create(params: any): Promise<any> {
    throw new Error('not implemented');
  }

  update(id: string, params: any): Promise<any> {
    throw new Error('not implemented');
  }

  delete(id: string): Promise<any> {
    throw new Error('not implemented');
  }
}

export async function excelServiceFactory(
  config?: any,
): Promise<Excel> {
  return new Excel(config);
}
