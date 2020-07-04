package com.huaji.wms.exception;

/**
 * RepositoryManageService异常
 *
 * @author Ken
 * @since 2020/3/8.
 */
public class RepositoryManageServiceException extends BusinessException {

    RepositoryManageServiceException(){
        super();
    }

    public RepositoryManageServiceException(Exception e){
        super(e);
    }

    RepositoryManageServiceException(Exception e, String exceptionDesc){
        super(e, exceptionDesc);
    }

}
