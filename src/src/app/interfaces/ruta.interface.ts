import { IRegion } from './region.interface';
import { ITipoLugar } from './tipo_lugar.interface';

export interface IRuta {
    id: string;
    destino?: string;
    regionOrigen: IRegion;
    comumaOrigen: Object;
    regionDestino: IRegion;
    comumaDestino: Object;   
    tipoLugarOrigen: ITipoLugar;
    tipoLugarDestino: ITipoLugar 
    codigos: string[];
    estado: number;
    usuario?: Object;
    
}