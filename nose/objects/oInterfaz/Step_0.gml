if _dinero >= 5000 && !_gillionaire_logro // Solo si no lo activaste ya
{
    _gillionaire_desaparece = false;
    _gillionaire_logro = true;
    alarm[1] = room_speed * 4;
}