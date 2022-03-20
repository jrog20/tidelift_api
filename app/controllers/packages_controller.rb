class PackagesController < ApplicationController
    def index
        packages = Package.all
        render json: packages
    end

    def show
        package = Package.find_by(id: params[:id])
        render json: package
    end

    def create
        package = Package.new(package_params)
        if package.save
            render json: package
        else
            render error: { error: 'Unable to create package' }, status: 400
        end
    end

    def update
        package = Package.find_by(id: params[:id])
        if package.update(package_params) 
            render json: package
        else
            render error: { error: 'Unable to update package' }, status: 400
        end
    end

    def destroy
    end

    private
    def package_params
        params.permit(:package_name, :license)
    end
end
