#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>

class BackEnd : public QObject
{
    Q_OBJECT

public:
    explicit BackEnd(QObject *parent = nullptr);


signals:
    void moving();
public slots:
    void moveW();
    void moveA();
    void moveS();
    void moveD();
};

#endif // BACKEND_H
