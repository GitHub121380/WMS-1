package com.huaji.wms.exception;

/**
 * CustomerManageService异常
 *
 * @author Ken
 * @since 2020/3/8.
 */
public class CustomerManageServiceException extends BusinessException{

    public CustomerManageServiceException(){
        super();
    }

    public CustomerManageServiceException(Exception e, String exception){
        super(e, exception);
    }

    public CustomerManageServiceException(Exception e){
        super(e);
    }
}
