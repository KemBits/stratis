// Copyright (c) 2011-2014 The Stratis Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef STRATIS_QT_STRATISADDRESSVALIDATOR_H
#define STRATIS_QT_STRATISADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class StratisAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit StratisAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Stratis address widget validator, checks for a valid stratis address.
 */
class StratisAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit StratisAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // STRATIS_QT_STRATISADDRESSVALIDATOR_H
