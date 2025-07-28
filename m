Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A65B141C5
	for <lists+jfs-discussion@lfdr.de>; Mon, 28 Jul 2025 20:15:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Fo3HRFWFyktEGTFn2Cr4Q0dDT7Ufz3P8pBzsMmInHU=; b=aIDAR0/Owpgps251oQqgOOVCuB
	SxxdZFx03gxD+2JxfFIv47rrogBkr/7u07mFbyXYPAt8eSCf1EewPLZhQgx0q6KsMhS5XCVjZiO3o
	uiIpwa0TUZNbRL3MAOK9azoGGU8fRNZq9454FJ/uUrySxWohADFX0ikT2UxsMy51AMuM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ugSMf-0007TW-VV;
	Mon, 28 Jul 2025 18:14:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <contact@arnaud-lcm.com>) id 1ugSMd-0007TO-MA
 for jfs-discussion@lists.sourceforge.net;
 Mon, 28 Jul 2025 18:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GG3d6bNdSvnXkJs1hSPzQwlF+pJVXm3nwSRhYdVBeXo=; b=GWvZeKMB0k7htHTpryrCQRbDBv
 tLF7mTNtQMI1NXCNG0VbObVsKUPjUiJrXzLTN179pYCNYWJCwQWyypifg8t9XZmjiJrF4tHzWDPVz
 Mge0rh+lBgVyMLzta7KxcRAkoES1Yz/HtLqOB8Jij8PemCSU45DujMxfUCErgY5pIj78=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GG3d6bNdSvnXkJs1hSPzQwlF+pJVXm3nwSRhYdVBeXo=; b=JUetWN9m67qImfV+fFy6MSD3g5
 oTfWp2JSQ2dFmuQ3l/Kp4vrq8eoW83rasFwdFwy4Dv1RrHNuoKpOmAIthU/0ql7EdA0jtxoP4f/NQ
 zezr1lkTmpZXuoo9P1zNs72HPN+L9HL7ktdAmNx+qaflmzx72F+BuebvvjiINRktSXDA=;
Received: from plesk.hostmyservers.fr ([45.145.164.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ugSMb-0005Jn-Fg for jfs-discussion@lists.sourceforge.net;
 Mon, 28 Jul 2025 18:14:19 +0000
Received: from [IPV6:2a02:8084:255b:aa00:b1cb:3dd6:fb96:876a] (unknown
 [IPv6:2a02:8084:255b:aa00:b1cb:3dd6:fb96:876a])
 by plesk.hostmyservers.fr (Postfix) with ESMTPSA id C26FB404B5;
 Mon, 28 Jul 2025 18:14:04 +0000 (UTC)
Authentication-Results: Plesk;
 spf=pass (sender IP is 2a02:8084:255b:aa00:b1cb:3dd6:fb96:876a)
 smtp.mailfrom=contact@arnaud-lcm.com
 smtp.helo=[IPV6:2a02:8084:255b:aa00:b1cb:3dd6:fb96:876a]
Received-SPF: pass (Plesk: connection is authenticated)
Message-ID: <35094576-897f-4ab4-8835-e47940a1f0a3@arnaud-lcm.com>
Date: Mon, 28 Jul 2025 19:14:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dave Kleikamp <dave.kleikamp@oracle.com>, Dave Kleikamp <shaggy@kernel.org>
References: <20250424-ubsan-jfs-v1-1-2eab57c1ac50@arnaud-lcm.com>
 <e7b79c66-22b4-4d01-be5f-adfc5ba7e50b@oracle.com>
Content-Language: en-US
In-Reply-To: <e7b79c66-22b4-4d01-be5f-adfc5ba7e50b@oracle.com>
X-PPP-Message-ID: <175372644531.17396.11877905302170947884@Plesk>
X-PPP-Vhost: arnaud-lcm.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Lovely, thanks ! Arnaud On 11/07/2025 20:23, Dave Kleikamp
 wrote: > I'm finally trying to catch up. > > On 4/23/25 5:13PM, Arnaud Lecomte
 via Jfs-discussion wrote: >> When computing the tree index in dbAllocAG,
 we never chec [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1ugSMb-0005Jn-Fg
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
From: Arnaud Lecomte via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Arnaud Lecomte <contact@arnaud-lcm.com>
Cc: jfs-discussion@lists.sourceforge.net,
 syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

TG92ZWx5LCB0aGFua3MgIQpBcm5hdWQKCk9uIDExLzA3LzIwMjUgMjA6MjMsIERhdmUgS2xlaWth
bXAgd3JvdGU6Cj4gSSdtIGZpbmFsbHkgdHJ5aW5nIHRvIGNhdGNoIHVwLgo+Cj4gT24gNC8yMy8y
NSA1OjEzUE0sIEFybmF1ZCBMZWNvbXRlIHZpYSBKZnMtZGlzY3Vzc2lvbiB3cm90ZToKPj4gV2hl
biBjb21wdXRpbmcgdGhlIHRyZWUgaW5kZXggaW4gZGJBbGxvY0FHLCB3ZSBuZXZlciBjaGVjayB3
ZSBhcmUgbm90Cj4+IG91dCBvZiBib3VuZHMgZnJvbSB0aGUgc2l6ZSBvZiB0aGUgc3RyZWUuCj4+
IFRoaXMgY291bGQgaGFwcGVuIGluIGEgc2NlbmFyaW8gd2hlcmUgdGhlIGZpbGVzeXN0ZW0gbWV0
YWRhdGEgYXJlCj4+IGNvcnJ1cHRlZC4KPgo+IExvb2tzIGdvb2QuIEknbGwgYXBwbHkgYW5kIHRl
c3QgdGhpcy4KPgo+Pgo+PiBSZXBvcnRlZC1ieTogc3l6Ym90K2NmZmQxODMwOTE1Mzk0OGYzYzNl
QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPj4gQ2xvc2VzOiBodHRwczovL3N5emthbGxlci5h
cHBzcG90LmNvbS9idWc/ZXh0aWQ9Y2ZmZDE4MzA5MTUzOTQ4ZjNjM2UKPj4gVGVzdGVkLWJ5OiBz
eXpib3QrY2ZmZDE4MzA5MTUzOTQ4ZjNjM2VAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+PiBG
aXhlczogMjYzZTU1OTQ5ZDg5ICgieDg2L2NwdS9hbWQ6IEZpeCB3b3JrYXJvdW5kIGZvciBlcnJh
dHVtIDEwNTQiKQo+Cj4gUmVtb3ZpbmcgdGhlIEZpeGVzOiBsaW5lLiBUaGlzIGRvZXNuJ3QgbWFr
ZSBzZW5zZS4KPgo+PiBTaWduZWQtb2ZmLWJ5OiBBcm5hdWQgTGVjb210ZSA8Y29udGFjdEBhcm5h
dWQtbGNtLmNvbT4KPj4gLS0tCj4+IMKgIGZzL2pmcy9qZnNfZG1hcC5jIHwgNiArKysrKysKPj4g
wqAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZnMv
amZzL2pmc19kbWFwLmMgYi9mcy9qZnMvamZzX2RtYXAuYwo+PiBpbmRleCAyNmU4OWQwYzY5YjYu
LjdhY2ViYjlhMjFiMCAxMDA2NDQKPj4gLS0tIGEvZnMvamZzL2pmc19kbWFwLmMKPj4gKysrIGIv
ZnMvamZzL2pmc19kbWFwLmMKPj4gQEAgLTEzODUsNiArMTM4NSwxMiBAQCBkYkFsbG9jQUcoc3Ry
dWN0IGJtYXAgKiBibXAsIGludCBhZ25vLCBzNjQgCj4+IG5ibG9ja3MsIGludCBsMm5iLCBzNjQg
KiByZXN1bHRzKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgKDEgPDwgKEwyTFBFUkNUTCAtIChibXAt
PmRiX2FnaGVpZ2h0IDw8IDEpKSkgLyAKPj4gYm1wLT5kYl9hZ3dpZHRoOwo+PiDCoMKgwqDCoMKg
IHRpID0gYm1wLT5kYl9hZ3N0YXJ0ICsgYm1wLT5kYl9hZ3dpZHRoICogKGFnbm8gJiAoYWdwZXJs
ZXYgLSAxKSk7Cj4+IMKgICvCoMKgwqAgaWYgKHRpIDwgMCB8fCB0aSA+PSBsZTMyX3RvX2NwdShk
Y3AtPm5sZWFmcykpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGpmc19lcnJvcihibXAtPmRiX2lwYm1h
cC0+aV9zYiwgIkNvcnJ1cHQgZG1hcGN0bCBwYWdlOiB0aSAKPj4gb3V0IG9mIGJvdW5kc1xuIik7
Cj4+ICvCoMKgwqDCoMKgwqDCoCByZWxlYXNlX21ldGFwYWdlKG1wKTsKPj4gK8KgwqDCoMKgwqDC
oMKgIHJldHVybiAtRUlPOwo+PiArwqDCoMKgIH0KPj4gKwo+PiDCoMKgwqDCoMKgIC8qIGRtYXAg
Y29udHJvbCBwYWdlIHRyZWVzIGZhbi1vdXQgYnkgNCBhbmQgYSBzaW5nbGUgYWxsb2NhdGlvbgo+
PiDCoMKgwqDCoMKgwqAgKiBncm91cCBtYXkgYmUgZGVzY3JpYmVkIGJ5IDEgb3IgMiBzdWJ0cmVl
cyB3aXRoaW4gdGhlIGFnIGxldmVsCj4+IMKgwqDCoMKgwqDCoCAqIGRtYXAgY29udHJvbCBwYWdl
LCBkZXBlbmRpbmcgdXBvbiB0aGUgYWcgc2l6ZS4gZXhhbWluZSB0aGUgYWcncwo+Pgo+PiAtLS0K
Pj4gYmFzZS1jb21taXQ6IDg1NjA2OTdiMjNkYzJmNDA1Y2I0NjNhZjJiMTcyNTZhOTg4ODEyOWQK
Pj4gY2hhbmdlLWlkOiAyMDI1MDQyMy11YnNhbi1qZnMtM2E1OGFjYWU1ZTU3Cj4+Cj4+IEJlc3Qg
cmVnYXJkcywKPgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9qZnMtZGlzY3Vzc2lvbgo=
