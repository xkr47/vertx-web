require 'vertx-web/auth_handler'
require 'vertx-web/routing_context'
require 'vertx-auth/auth_provider'
require 'vertx/util/utils.rb'
# Generated from io.vertx.ext.web.handler.JWTAuthHandler
module VertxWeb
  #  An auth handler that provides JWT Authentication support.
  class JWTAuthHandler
    include ::VertxWeb::AuthHandler
    # @private
    # @param j_del [::VertxWeb::JWTAuthHandler] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::VertxWeb::JWTAuthHandler] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [::VertxWeb::RoutingContext] arg0
    # @return [void]
    def handle(arg0=nil)
      if arg0.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:handle, [Java::IoVertxExtWeb::RoutingContext.java_class]).call(arg0.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling handle(arg0)"
    end
    #  Add a required role for this auth handler
    # @param [String] role the role
    # @return [self]
    def add_role(role=nil)
      if role.class == String && !block_given?
        @j_del.java_method(:addRole, [Java::java.lang.String.java_class]).call(role)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling add_role(role)"
    end
    #  Add a required permission for this auth handler
    # @param [String] permission the permission
    # @return [self]
    def add_permission(permission=nil)
      if permission.class == String && !block_given?
        @j_del.java_method(:addPermission, [Java::java.lang.String.java_class]).call(permission)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling add_permission(permission)"
    end
    #  Add a set of required roles for this auth handler
    # @param [Set<String>] roles the set of roles
    # @return [self]
    def add_roles(roles=nil)
      if roles.class == Set && !block_given?
        @j_del.java_method(:addRoles, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(roles.map { |element| element }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling add_roles(roles)"
    end
    #  Add a set of required permissions for this auth handler
    # @param [Set<String>] permissions the set of permissions
    # @return [self]
    def add_permissions(permissions=nil)
      if permissions.class == Set && !block_given?
        @j_del.java_method(:addPermissions, [Java::JavaUtil::Set.java_class]).call(Java::JavaUtil::LinkedHashSet.new(permissions.map { |element| element }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling add_permissions(permissions)"
    end
    #  Create a basic auth handler
    # @param [::VertxAuth::AuthProvider] authProvider the auth provider to use.
    # @param [String] skip
    # @return [::VertxWeb::JWTAuthHandler] the auth handler
    def self.create(authProvider=nil,skip=nil)
      if authProvider.class.method_defined?(:j_del) && !block_given? && skip == nil
        return ::VertxWeb::JWTAuthHandler.new(Java::IoVertxExtWebHandler::JWTAuthHandler.java_method(:create, [Java::IoVertxExtAuth::AuthProvider.java_class]).call(authProvider.j_del))
      elsif authProvider.class.method_defined?(:j_del) && skip.class == String && !block_given?
        return ::VertxWeb::JWTAuthHandler.new(Java::IoVertxExtWebHandler::JWTAuthHandler.java_method(:create, [Java::IoVertxExtAuth::AuthProvider.java_class,Java::java.lang.String.java_class]).call(authProvider.j_del,skip))
      end
      raise ArgumentError, "Invalid arguments when calling create(authProvider,skip)"
    end
    # @param [Array<String>] audience
    # @return [self]
    def set_audience(audience=nil)
      if audience.class == Array && !block_given?
        @j_del.java_method(:setAudience, [Java::JavaUtil::List.java_class]).call(audience.map { |element| element })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_audience(audience)"
    end
    # @param [String] issuer
    # @return [self]
    def set_issuer(issuer=nil)
      if issuer.class == String && !block_given?
        @j_del.java_method(:setIssuer, [Java::java.lang.String.java_class]).call(issuer)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_issuer(issuer)"
    end
    # @param [true,false] ignoreExpiration
    # @return [self]
    def set_ignore_expiration(ignoreExpiration=nil)
      if (ignoreExpiration.class == TrueClass || ignoreExpiration.class == FalseClass) && !block_given?
        @j_del.java_method(:setIgnoreExpiration, [Java::boolean.java_class]).call(ignoreExpiration)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_ignore_expiration(ignoreExpiration)"
    end
  end
end
