package io.logz.apollo.common;

/**
 * Created by roiravhon on 3/21/17.
 */
public class HttpStatus {

    // Implementing this class since there are missing codes in all of built in java classes, and have an external dependency just for this seems too much.

    public static int OK = 200;
    public static int CREATED = 201;
    public static int ACCEPTED = 202;

    public static int BAD_REQUEST = 400;
    public static int FORBIDDEN = 403;
    public static int CONFLICT = 409;
    public static int TOO_MANY_REQUESTS = 429;
}
