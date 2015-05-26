/*
 * Copyright 2014 Red Hat, Inc.
 *
 * Red Hat licenses this file to you under the Apache License, version 2.0
 * (the "License"); you may not use this file except in compliance with the
 * License.  You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

package io.vertx.groovy.ext.web.handler;
import groovy.transform.CompileStatic
import io.vertx.lang.groovy.InternalHelper
import java.util.List
import java.util.Set
import io.vertx.groovy.ext.web.RoutingContext
import io.vertx.groovy.ext.auth.AuthProvider
/**
 * An auth handler that provides JWT Authentication support.
*/
@CompileStatic
public class JWTAuthHandler implements AuthHandler {
  final def io.vertx.ext.web.handler.JWTAuthHandler delegate;
  public JWTAuthHandler(io.vertx.ext.web.handler.JWTAuthHandler delegate) {
    this.delegate = delegate;
  }
  public Object getDelegate() {
    return delegate;
  }
  public void handle(RoutingContext arg0) {
    ((io.vertx.core.Handler) this.delegate).handle((io.vertx.ext.web.RoutingContext)arg0.getDelegate());
  }
  /**
   * Add a required role for this auth handler
   * @param role the role
   * @return a reference to this, so the API can be used fluently
   */
  public AuthHandler addRole(String role) {
    ((io.vertx.ext.web.handler.AuthHandler) this.delegate).addRole(role);
    return this;
  }
  /**
   * Add a required permission for this auth handler
   * @param permission the permission
   * @return a reference to this, so the API can be used fluently
   */
  public AuthHandler addPermission(String permission) {
    ((io.vertx.ext.web.handler.AuthHandler) this.delegate).addPermission(permission);
    return this;
  }
  /**
   * Add a set of required roles for this auth handler
   * @param roles the set of roles
   * @return a reference to this, so the API can be used fluently
   */
  public AuthHandler addRoles(Set<String> roles) {
    ((io.vertx.ext.web.handler.AuthHandler) this.delegate).addRoles(roles);
    return this;
  }
  /**
   * Add a set of required permissions for this auth handler
   * @param permissions the set of permissions
   * @return a reference to this, so the API can be used fluently
   */
  public AuthHandler addPermissions(Set<String> permissions) {
    ((io.vertx.ext.web.handler.AuthHandler) this.delegate).addPermissions(permissions);
    return this;
  }
  /**
   * Create a basic auth handler
   * @param authProvider the auth provider to use
   * @return the auth handler
   */
  public static JWTAuthHandler create(AuthProvider authProvider) {
    def ret= new io.vertx.groovy.ext.web.handler.JWTAuthHandler(io.vertx.ext.web.handler.JWTAuthHandler.create((io.vertx.ext.auth.AuthProvider)authProvider.getDelegate()));
    return ret;
  }
  /**
   * Create a basic auth handler
   * @param authProvider the auth provider to use.
   * @param skip 
   * @return the auth handler
   */
  public static JWTAuthHandler create(AuthProvider authProvider, String skip) {
    def ret= new io.vertx.groovy.ext.web.handler.JWTAuthHandler(io.vertx.ext.web.handler.JWTAuthHandler.create((io.vertx.ext.auth.AuthProvider)authProvider.getDelegate(), skip));
    return ret;
  }
  public JWTAuthHandler setAudience(List<String> audience) {
    this.delegate.setAudience(audience);
    return this;
  }
  public JWTAuthHandler setIssuer(String issuer) {
    this.delegate.setIssuer(issuer);
    return this;
  }
  public JWTAuthHandler setIgnoreExpiration(boolean ignoreExpiration) {
    this.delegate.setIgnoreExpiration(ignoreExpiration);
    return this;
  }
}
