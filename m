Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BB7B12EE8
	for <lists+jfs-discussion@lfdr.de>; Sun, 27 Jul 2025 11:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ctn0N1d+9cEzJH5qzL4i3114ws3oaqy3ou0EaI/n41Q=; b=m/5HQzRdc9OLvEU3MsmcvyH+06
	EZQRCi/ECLZXDnhMEvEeVgRBPdCrHMxOm7bBSHU7Kkr8W5lfUK38Ak/Iefjkf77+c9jSyp0N+l9w0
	fCJQ6MttVNWDCHHjazLxk9VFQHt9WqlDHc7HjM1j0MkBcjges3FqSkTzc2oGuN29MbEA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ufy71-0003bD-Hw;
	Sun, 27 Jul 2025 09:56:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <contact@arnaud-lcm.com>) id 1ufy6z-0003b6-G2
 for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Jul 2025 09:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sVZUApvDvfWhvRauFpn/c3LAa/R7bVagd0H5Qow7rdU=; b=LFdsNr00KaNlufE1RHP2xhitQH
 YatwSoikD2bjNdXWs3R/3NQbNPXCukE6R5r+21ix6BN1FpEtSrEwzYRNtefoUlp8Dgxg2Vs/yF1Q+
 8xIDyi8HCvmPZ4Azu2sT7kPVRH+AMy5fEFJGeCGWiKr9lc1QETkrF/HaD14ER6cORkTc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sVZUApvDvfWhvRauFpn/c3LAa/R7bVagd0H5Qow7rdU=; b=a3KgdnndNfIXUtXbRpSId8/n5I
 JXi5CaEO62l0iyP9Hcb33ztxLtWqGRVsdWVcyhygI1jTTQOWIKQZTyapGTjLMHS6ev4mT4JuaIjwE
 0Phsbs9ecFR9ypWrBclekHy5UDymIvvhIEjJ+XyoZNjqm/ujh/e2tygMmdYNRMzbfGI8=;
Received: from plesk.hostmyservers.fr ([45.145.164.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ufy6v-0000vN-4T for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Jul 2025 09:56:09 +0000
Received: from [IPV6:2a02:8084:255b:aa00:790f:f93d:f830:f4c4] (unknown
 [IPv6:2a02:8084:255b:aa00:790f:f93d:f830:f4c4])
 by plesk.hostmyservers.fr (Postfix) with ESMTPSA id 067214190D;
 Sun, 27 Jul 2025 09:55:52 +0000 (UTC)
Authentication-Results: Plesk;
 spf=pass (sender IP is 2a02:8084:255b:aa00:790f:f93d:f830:f4c4)
 smtp.mailfrom=contact@arnaud-lcm.com
 smtp.helo=[IPV6:2a02:8084:255b:aa00:790f:f93d:f830:f4c4]
Received-SPF: pass (Plesk: connection is authenticated)
Message-ID: <efd5366c-811b-482c-9e69-ce2fe1ef3295@arnaud-lcm.com>
Date: Sun, 27 Jul 2025 10:55:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dave Kleikamp <dave.kleikamp@oracle.com>, Dave Kleikamp <shaggy@kernel.org>
References: <20250424-ubsan-jfs-v1-1-2eab57c1ac50@arnaud-lcm.com>
 <e7b79c66-22b4-4d01-be5f-adfc5ba7e50b@oracle.com>
 <ce2b8d4b-7396-43fe-b948-5ab59294832f@arnaud-lcm.com>
Content-Language: en-US
In-Reply-To: <ce2b8d4b-7396-43fe-b948-5ab59294832f@arnaud-lcm.com>
X-PPP-Message-ID: <175361015355.8058.11572088059822474610@Plesk>
X-PPP-Vhost: arnaud-lcm.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dave, I am bumping the thread as I was wondering if you
 have some updates. Thanks ! On 14/07/2025 21:35, Lecomte, Arnaud wrote: >
 Thanks Dave ! > > On 11/07/2025 20:23, Dave Kleikamp wrote: >> I'm finally
 trying to catch up. >> >> On 4/23/25 5:13PM, Arnaud Lecomte via Jfs-discussion
 [...] Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1ufy6v-0000vN-4T
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

SGkgRGF2ZSwKSSBhbSBidW1waW5nIHRoZSB0aHJlYWQgYXMgSSB3YXMgd29uZGVyaW5nIGlmIHlv
dSBoYXZlIHNvbWUgdXBkYXRlcy4KVGhhbmtzICEKCk9uIDE0LzA3LzIwMjUgMjE6MzUsIExlY29t
dGUsIEFybmF1ZCB3cm90ZToKPiBUaGFua3MgRGF2ZSAhCj4KPiBPbiAxMS8wNy8yMDI1IDIwOjIz
LCBEYXZlIEtsZWlrYW1wIHdyb3RlOgo+PiBJJ20gZmluYWxseSB0cnlpbmcgdG8gY2F0Y2ggdXAu
Cj4+Cj4+IE9uIDQvMjMvMjUgNToxM1BNLCBBcm5hdWQgTGVjb210ZSB2aWEgSmZzLWRpc2N1c3Np
b24gd3JvdGU6Cj4+PiBXaGVuIGNvbXB1dGluZyB0aGUgdHJlZSBpbmRleCBpbiBkYkFsbG9jQUcs
IHdlIG5ldmVyIGNoZWNrIHdlIGFyZSBub3QKPj4+IG91dCBvZiBib3VuZHMgZnJvbSB0aGUgc2l6
ZSBvZiB0aGUgc3RyZWUuCj4+PiBUaGlzIGNvdWxkIGhhcHBlbiBpbiBhIHNjZW5hcmlvIHdoZXJl
IHRoZSBmaWxlc3lzdGVtIG1ldGFkYXRhIGFyZQo+Pj4gY29ycnVwdGVkLgo+Pgo+PiBMb29rcyBn
b29kLiBJJ2xsIGFwcGx5IGFuZCB0ZXN0IHRoaXMuCj4+Cj4+Pgo+Pj4gUmVwb3J0ZWQtYnk6IHN5
emJvdCtjZmZkMTgzMDkxNTM5NDhmM2MzZUBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCj4+PiBD
bG9zZXM6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL2J1Zz9leHRpZD1jZmZkMTgzMDkx
NTM5NDhmM2MzZQo+Pj4gVGVzdGVkLWJ5OiBzeXpib3QrY2ZmZDE4MzA5MTUzOTQ4ZjNjM2VAc3l6
a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+Pj4gRml4ZXM6IDI2M2U1NTk0OWQ4OSAoIng4Ni9jcHUv
YW1kOiBGaXggd29ya2Fyb3VuZCBmb3IgZXJyYXR1bSAxMDU0IikKPj4KPj4gUmVtb3ZpbmcgdGhl
IEZpeGVzOiBsaW5lLiBUaGlzIGRvZXNuJ3QgbWFrZSBzZW5zZS4KPj4KPj4+IFNpZ25lZC1vZmYt
Ynk6IEFybmF1ZCBMZWNvbXRlIDxjb250YWN0QGFybmF1ZC1sY20uY29tPgo+Pj4gLS0tCj4+PiDC
oCBmcy9qZnMvamZzX2RtYXAuYyB8IDYgKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfZG1hcC5jIGIvZnMv
amZzL2pmc19kbWFwLmMKPj4+IGluZGV4IDI2ZTg5ZDBjNjliNi4uN2FjZWJiOWEyMWIwIDEwMDY0
NAo+Pj4gLS0tIGEvZnMvamZzL2pmc19kbWFwLmMKPj4+ICsrKyBiL2ZzL2pmcy9qZnNfZG1hcC5j
Cj4+PiBAQCAtMTM4NSw2ICsxMzg1LDEyIEBAIGRiQWxsb2NBRyhzdHJ1Y3QgYm1hcCAqIGJtcCwg
aW50IGFnbm8sIHM2NCAKPj4+IG5ibG9ja3MsIGludCBsMm5iLCBzNjQgKiByZXN1bHRzKQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgICgxIDw8IChMMkxQRVJDVEwgLSAoYm1wLT5kYl9hZ2hlaWdodCA8
PCAxKSkpIC8gCj4+PiBibXAtPmRiX2Fnd2lkdGg7Cj4+PiDCoMKgwqDCoMKgIHRpID0gYm1wLT5k
Yl9hZ3N0YXJ0ICsgYm1wLT5kYl9hZ3dpZHRoICogKGFnbm8gJiAoYWdwZXJsZXYgLSAxKSk7Cj4+
PiDCoCArwqDCoMKgIGlmICh0aSA8IDAgfHwgdGkgPj0gbGUzMl90b19jcHUoZGNwLT5ubGVhZnMp
KSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgamZzX2Vycm9yKGJtcC0+ZGJfaXBibWFwLT5pX3NiLCAi
Q29ycnVwdCBkbWFwY3RsIHBhZ2U6IHRpIAo+Pj4gb3V0IG9mIGJvdW5kc1xuIik7Cj4+PiArwqDC
oMKgwqDCoMKgwqAgcmVsZWFzZV9tZXRhcGFnZShtcCk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FSU87Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+IMKgwqDCoMKgwqAgLyogZG1hcCBjb250
cm9sIHBhZ2UgdHJlZXMgZmFuLW91dCBieSA0IGFuZCBhIHNpbmdsZSBhbGxvY2F0aW9uCj4+PiDC
oMKgwqDCoMKgwqAgKiBncm91cCBtYXkgYmUgZGVzY3JpYmVkIGJ5IDEgb3IgMiBzdWJ0cmVlcyB3
aXRoaW4gdGhlIGFnIGxldmVsCj4+PiDCoMKgwqDCoMKgwqAgKiBkbWFwIGNvbnRyb2wgcGFnZSwg
ZGVwZW5kaW5nIHVwb24gdGhlIGFnIHNpemUuIGV4YW1pbmUgdGhlIAo+Pj4gYWcncwo+Pj4KPj4+
IC0tLQo+Pj4gYmFzZS1jb21taXQ6IDg1NjA2OTdiMjNkYzJmNDA1Y2I0NjNhZjJiMTcyNTZhOTg4
ODEyOWQKPj4+IGNoYW5nZS1pZDogMjAyNTA0MjMtdWJzYW4tamZzLTNhNThhY2FlNWU1Nwo+Pj4K
Pj4+IEJlc3QgcmVnYXJkcywKPj4KPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
