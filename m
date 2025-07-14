Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C79B048EC
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Jul 2025 23:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O6VsBZ6lSsPihazkjPzf6Bzhp773ER+v3QG+oY+0CwM=; b=fEz2PFpG8eQeAswJXy2PGDsgKL
	yFwHXxrARc3nIrfhmglTzYjvX0u74TGRNO9/qO5PM4YBj+BwUDAHXXBnt1lmeSDSH8PCFpYsQZjbt
	IDdCWpZM/+QbuvlzeNkVWXDuzy9lj7txcTGK0t9rI4fY/xUSRfxtlz/yLbAeEJEOEtHo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ubQHe-0004oX-Mr;
	Mon, 14 Jul 2025 21:00:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <contact@arnaud-lcm.com>) id 1ubQHc-0004oP-N7
 for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Jul 2025 21:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DJVmlWT+azY2p7M0G0OnXT7cppy4BV81sDGCqBb1ekI=; b=GXEi/xEHCwe2D8xVhko2uox24X
 C6yqLiOa84A3y04VihDeTdL12pNwAeYXfnFGsa3zJ71DdVEFvVcGVSJfV0TWrcvFu6TEvyETd21U6
 pQLkCpr0m2Q7lusGYgORhcEQ30eD3/VtesL3gAukMkIWDOMHdLZ62gLJvip0BvNbH8rc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DJVmlWT+azY2p7M0G0OnXT7cppy4BV81sDGCqBb1ekI=; b=m1Qcyt6eqHXBukogxJS985a9cJ
 L3QtaWCr5EHmHfATpp/qmTBI4QzplBpWT169iEbGfhONPmXhjtqcfJLmk8PB1cUgnwZooQBVzfC6r
 58O9majhuCS0ewV2p0Vzx7YvZ2Jd/T6KiKsaEYNkaL6UHSDYlQmYN/9jN9v/cOnsIeVg=;
Received: from plesk.hostmyservers.fr ([45.145.164.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ubQHb-0006As-FR for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Jul 2025 21:00:20 +0000
Received: from [172.20.10.11] (unknown [37.168.28.62])
 by plesk.hostmyservers.fr (Postfix) with ESMTPSA id 29D3C415E9;
 Mon, 14 Jul 2025 20:35:03 +0000 (UTC)
Authentication-Results: Plesk;
 spf=pass (sender IP is 37.168.28.62) smtp.mailfrom=contact@arnaud-lcm.com
 smtp.helo=[172.20.10.11]
Received-SPF: pass (Plesk: connection is authenticated)
Message-ID: <ce2b8d4b-7396-43fe-b948-5ab59294832f@arnaud-lcm.com>
Date: Mon, 14 Jul 2025 21:35:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dave Kleikamp <dave.kleikamp@oracle.com>, Dave Kleikamp <shaggy@kernel.org>
References: <20250424-ubsan-jfs-v1-1-2eab57c1ac50@arnaud-lcm.com>
 <e7b79c66-22b4-4d01-be5f-adfc5ba7e50b@oracle.com>
Content-Language: en-US
In-Reply-To: <e7b79c66-22b4-4d01-be5f-adfc5ba7e50b@oracle.com>
X-PPP-Message-ID: <175252530422.29268.1871237425922975958@Plesk>
X-PPP-Vhost: arnaud-lcm.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Dave ! On 11/07/2025 20:23, Dave Kleikamp wrote: >
 I'm finally trying to catch up. > > On 4/23/25 5:13PM, Arnaud Lecomte via
 Jfs-discussion wrote: >> When computing the tree index in dbAllocAG, we never
 chec [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1ubQHb-0006As-FR
Subject: Re: [Jfs-discussion] [PATCH] jfs: upper bound check of tree index
 in dbAllocAG
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: "Lecomte,
 Arnaud via Jfs-discussion" <jfs-discussion@lists.sourceforge.net>
Reply-To: "Lecomte, Arnaud" <contact@arnaud-lcm.com>
Cc: jfs-discussion@lists.sourceforge.net,
 syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

VGhhbmtzIERhdmUgIQoKT24gMTEvMDcvMjAyNSAyMDoyMywgRGF2ZSBLbGVpa2FtcCB3cm90ZToK
PiBJJ20gZmluYWxseSB0cnlpbmcgdG8gY2F0Y2ggdXAuCj4KPiBPbiA0LzIzLzI1IDU6MTNQTSwg
QXJuYXVkIExlY29tdGUgdmlhIEpmcy1kaXNjdXNzaW9uIHdyb3RlOgo+PiBXaGVuIGNvbXB1dGlu
ZyB0aGUgdHJlZSBpbmRleCBpbiBkYkFsbG9jQUcsIHdlIG5ldmVyIGNoZWNrIHdlIGFyZSBub3QK
Pj4gb3V0IG9mIGJvdW5kcyBmcm9tIHRoZSBzaXplIG9mIHRoZSBzdHJlZS4KPj4gVGhpcyBjb3Vs
ZCBoYXBwZW4gaW4gYSBzY2VuYXJpbyB3aGVyZSB0aGUgZmlsZXN5c3RlbSBtZXRhZGF0YSBhcmUK
Pj4gY29ycnVwdGVkLgo+Cj4gTG9va3MgZ29vZC4gSSdsbCBhcHBseSBhbmQgdGVzdCB0aGlzLgo+
Cj4+Cj4+IFJlcG9ydGVkLWJ5OiBzeXpib3QrY2ZmZDE4MzA5MTUzOTQ4ZjNjM2VAc3l6a2FsbGVy
LmFwcHNwb3RtYWlsLmNvbQo+PiBDbG9zZXM6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29t
L2J1Zz9leHRpZD1jZmZkMTgzMDkxNTM5NDhmM2MzZQo+PiBUZXN0ZWQtYnk6IHN5emJvdCtjZmZk
MTgzMDkxNTM5NDhmM2MzZUBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCj4+IEZpeGVzOiAyNjNl
NTU5NDlkODkgKCJ4ODYvY3B1L2FtZDogRml4IHdvcmthcm91bmQgZm9yIGVycmF0dW0gMTA1NCIp
Cj4KPiBSZW1vdmluZyB0aGUgRml4ZXM6IGxpbmUuIFRoaXMgZG9lc24ndCBtYWtlIHNlbnNlLgo+
Cj4+IFNpZ25lZC1vZmYtYnk6IEFybmF1ZCBMZWNvbXRlIDxjb250YWN0QGFybmF1ZC1sY20uY29t
Pgo+PiAtLS0KPj4gwqAgZnMvamZzL2pmc19kbWFwLmMgfCA2ICsrKysrKwo+PiDCoCAxIGZpbGUg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9mcy9qZnMvamZzX2Rt
YXAuYyBiL2ZzL2pmcy9qZnNfZG1hcC5jCj4+IGluZGV4IDI2ZTg5ZDBjNjliNi4uN2FjZWJiOWEy
MWIwIDEwMDY0NAo+PiAtLS0gYS9mcy9qZnMvamZzX2RtYXAuYwo+PiArKysgYi9mcy9qZnMvamZz
X2RtYXAuYwo+PiBAQCAtMTM4NSw2ICsxMzg1LDEyIEBAIGRiQWxsb2NBRyhzdHJ1Y3QgYm1hcCAq
IGJtcCwgaW50IGFnbm8sIHM2NCAKPj4gbmJsb2NrcywgaW50IGwybmIsIHM2NCAqIHJlc3VsdHMp
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAoMSA8PCAoTDJMUEVSQ1RMIC0gKGJtcC0+ZGJfYWdoZWln
aHQgPDwgMSkpKSAvIAo+PiBibXAtPmRiX2Fnd2lkdGg7Cj4+IMKgwqDCoMKgwqAgdGkgPSBibXAt
PmRiX2Fnc3RhcnQgKyBibXAtPmRiX2Fnd2lkdGggKiAoYWdubyAmIChhZ3BlcmxldiAtIDEpKTsK
Pj4gwqAgK8KgwqDCoCBpZiAodGkgPCAwIHx8IHRpID49IGxlMzJfdG9fY3B1KGRjcC0+bmxlYWZz
KSkgewo+PiArwqDCoMKgwqDCoMKgwqAgamZzX2Vycm9yKGJtcC0+ZGJfaXBibWFwLT5pX3NiLCAi
Q29ycnVwdCBkbWFwY3RsIHBhZ2U6IHRpIAo+PiBvdXQgb2YgYm91bmRzXG4iKTsKPj4gK8KgwqDC
oMKgwqDCoMKgIHJlbGVhc2VfbWV0YXBhZ2UobXApOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IC1FSU87Cj4+ICvCoMKgwqAgfQo+PiArCj4+IMKgwqDCoMKgwqAgLyogZG1hcCBjb250cm9sIHBh
Z2UgdHJlZXMgZmFuLW91dCBieSA0IGFuZCBhIHNpbmdsZSBhbGxvY2F0aW9uCj4+IMKgwqDCoMKg
wqDCoCAqIGdyb3VwIG1heSBiZSBkZXNjcmliZWQgYnkgMSBvciAyIHN1YnRyZWVzIHdpdGhpbiB0
aGUgYWcgbGV2ZWwKPj4gwqDCoMKgwqDCoMKgICogZG1hcCBjb250cm9sIHBhZ2UsIGRlcGVuZGlu
ZyB1cG9uIHRoZSBhZyBzaXplLiBleGFtaW5lIHRoZSBhZydzCj4+Cj4+IC0tLQo+PiBiYXNlLWNv
bW1pdDogODU2MDY5N2IyM2RjMmY0MDVjYjQ2M2FmMmIxNzI1NmE5ODg4MTI5ZAo+PiBjaGFuZ2Ut
aWQ6IDIwMjUwNDIzLXVic2FuLWpmcy0zYTU4YWNhZTVlNTcKPj4KPj4gQmVzdCByZWdhcmRzLAo+
Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMt
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNj
dXNzaW9uCg==
