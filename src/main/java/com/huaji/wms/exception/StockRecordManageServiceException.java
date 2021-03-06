package com.huaji.wms.exception;

/**
 * StockRecordManageService异常
 *
 * @author 滑技工厂
 * @since 2020/3/8.
 */
public class StockRecordManageServiceException extends BusinessException {

    public StockRecordManageServiceException(){
        super();
    }

    public StockRecordManageServiceException(Exception e){
        super(e);
    }

    public StockRecordManageServiceException(Exception e, String exceptionDesc){
        super(e, exceptionDesc);
    }

    public StockRecordManageServiceException(String exceptionDesc){
        super(exceptionDesc);
    }

}
