require 'test_helper'

class RelevamientosControllerTest < ActionController::TestCase
  setup do
    @relevamiento = relevamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relevamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relevamiento" do
    assert_difference('Relevamiento.count') do
      post :create, relevamiento: { activo_pasivo_aux: @relevamiento.activo_pasivo_aux, activo_pasivo_docente: @relevamiento.activo_pasivo_docente, calle: @relevamiento.calle, cant_cuadras: @relevamiento.cant_cuadras, depto: @relevamiento.depto, distancia_km: @relevamiento.distancia_km, escuela_id: @relevamiento.escuela_id, frente_alumnos: @relevamiento.frente_alumnos, grado_anio_alumno: @relevamiento.grado_anio_alumno, grado_docente: @relevamiento.grado_docente, localidad_id: @relevamiento.localidad_id, lugar_auxiliares: @relevamiento.lugar_auxiliares, nivel_id: @relevamiento.nivel_id, nombre_y_apellido: @relevamiento.nombre_y_apellido, nro: @relevamiento.nro, nro_documento: @relevamiento.nro_documento, piso: @relevamiento.piso, regular: @relevamiento.regular, rol: @relevamiento.rol, servicio_transporte: @relevamiento.servicio_transporte, telefono_contacto: @relevamiento.telefono_contacto, tipo_de_documento_id: @relevamiento.tipo_de_documento_id, tipo_gestion_id: @relevamiento.tipo_gestion_id, turno_docente: @relevamiento.turno_docente }
    end

    assert_redirected_to relevamiento_path(assigns(:relevamiento))
  end

  test "should show relevamiento" do
    get :show, id: @relevamiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relevamiento
    assert_response :success
  end

  test "should update relevamiento" do
    put :update, id: @relevamiento, relevamiento: { activo_pasivo_aux: @relevamiento.activo_pasivo_aux, activo_pasivo_docente: @relevamiento.activo_pasivo_docente, calle: @relevamiento.calle, cant_cuadras: @relevamiento.cant_cuadras, depto: @relevamiento.depto, distancia_km: @relevamiento.distancia_km, escuela_id: @relevamiento.escuela_id, frente_alumnos: @relevamiento.frente_alumnos, grado_anio_alumno: @relevamiento.grado_anio_alumno, grado_docente: @relevamiento.grado_docente, localidad_id: @relevamiento.localidad_id, lugar_auxiliares: @relevamiento.lugar_auxiliares, nivel_id: @relevamiento.nivel_id, nombre_y_apellido: @relevamiento.nombre_y_apellido, nro: @relevamiento.nro, nro_documento: @relevamiento.nro_documento, piso: @relevamiento.piso, regular: @relevamiento.regular, rol: @relevamiento.rol, servicio_transporte: @relevamiento.servicio_transporte, telefono_contacto: @relevamiento.telefono_contacto, tipo_de_documento_id: @relevamiento.tipo_de_documento_id, tipo_gestion_id: @relevamiento.tipo_gestion_id, turno_docente: @relevamiento.turno_docente }
    assert_redirected_to relevamiento_path(assigns(:relevamiento))
  end

  test "should destroy relevamiento" do
    assert_difference('Relevamiento.count', -1) do
      delete :destroy, id: @relevamiento
    end

    assert_redirected_to relevamientos_path
  end
end
