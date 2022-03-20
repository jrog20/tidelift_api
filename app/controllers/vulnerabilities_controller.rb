class VulnerabilitiesController < ApplicationController
    def index
        vulnerabilities = Vulnerability.all
        render json: vulnerabilities
    end

    def show
        vulnerability = Vulnerability.find_by(id: params[:id])
        render json: vulnerability
    end

    def create
        vulnerability = Vulnerability.new(vulnerability_params)
        if package.save
            render json: vulnerability
        else
            render error: { error: 'Unable to create vulnerability' }, status: 400
        end
    end

    def update
        vulnerability = Vulnerability.find_by(id: params[:id])
        if vulnerability.update(vulnerability_params) 
            render json: vulnerability
        else
            render error: { error: 'Unable to update vulnerability' }, status: 400
        end
    end

    def destroy
    end

    private
    def vulnerability_params
        params.permit(:vulnerability_id, :package_name, :package_version, :description, :created)
    end
end
