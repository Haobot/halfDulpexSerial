::simplelife_nick@hotmail.com
:: ��������Ŀ¼�е�����.C .h .cpp�ļ���Astyle���д�����������
::2014��10��6��
::����Astyle����λ�úͲ���
::(1) -f
::�����в���صĴ���֮�������У���import��public class֮�䡢public class�ͳ�Ա֮��ȣ�
::(2) -p
::�ڲ��������߲���ո���=��+��-�ȡ�
::�磺int a=10*60;
::�������int a = 10 * 60;
::(3) -P
::���������߲���ո���-dֻ�������������ո�-Dֻ��������롣
::�磺MessageBox.Show ("aaa");
::�������MessageBox.Show ( "aaa" );
::(4) -U
::�Ƴ��������߲���Ҫ�Ŀո�
::�磺MessageBox.Show ( "aaa" );
::�������MessageBox.Show ("aaa");
::(5) -V
::��Tab�滻Ϊ�ո�
::--style=ansi��ANSI ����ʽ������
::
::namespace foospace
::{
::��int Foo()
::��{
::����if (isBar)
::����{
::������bar();
::������return 1;
::����}
::����else
::������return 0;
::��}
::}

::--style=kr ��Kernighan&Ritchie ����ʽ������

::namespace foospace {
::��int Foo() {
::����if (isBar) {
::������bar();
::������return 1;
::����} else
::������return 0;
::��}
::}

::--style=linux ��Linux ����ʽ������

::namespace foospace
::{
::��int Foo()
::��{
::����if (isBar) {
::������bar();
::������return 1;
::����} else 
::������return 0;
::��}
::}

::--style=gnu ��GNU ����ʽ������

::namespace foospace
::{
::��int Foo()
::��{
::����if (isBar)
::����{
::������bar();
::������return 1;
::����}
::����else
::������return 0;
::��}
::}
::
::--style=java ��Java ����ʽ������
::class foospace {
::��int Foo() {
::����if (isBar) {
::������bar();
::������return 1;
::����} else
::������return 0;
::��}
::}

@echo off
::����������astyle�ľ���·��
set astyle="D:\Application\AStyle\bin\astyle.exe"

::ѭ������Ŀ¼
for /r . %%f in (*.cpp;*.c;*.h;) do %astyle% --style=ansi -p -P -n "%%f"
exit