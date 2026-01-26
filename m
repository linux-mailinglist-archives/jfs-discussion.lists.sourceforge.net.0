Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDqEJqDGdml7WAEAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Jan 2026 02:42:56 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DA98358A
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Jan 2026 02:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jw2OxCt6VsvMGmHMm7ZpCAQmk49Zy5Jt4HfxdEJDV0g=; b=gGNjvN17HnMHb+TLnCcU0E6bFP
	78FcOOKriFAuH89WgOaa6lSYrj8tod77AYffDzgBvIRJZv0D105ulyQSF+9ua7xQkVKAjsOfllPZD
	JF8JrpAqfZp1I9n5VeltXV+BAjRF1vc2CJd0e1PDinutofh9t6Q7qS9xyiefi6JFv4ec=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vkBcC-0005T7-Lx;
	Mon, 26 Jan 2026 01:42:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lilingfeng3@huawei.com>) id 1vkBcA-0005Sm-6C
 for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Jan 2026 01:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:CC:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2bEsuty3kjLxFQykxFlp0ZVjufRFl34YPY/gs7AlqWs=; b=AwgOjo/iWxgDVNObIBgL2xkcrT
 NuB4yAri+xpZysAwabXc1YOz4bFH//GK1Ydi+Ft9vqbCSGFCx4iMz4ve1oSsX8pMplSToTI47Lcj/
 Ex5sAgNEqkiWk3Zjys8Hho/6beKmMVCmp3MEbMQPscbTnfBnbVX3Qq7CS8a+VexSOKFU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:CC:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2bEsuty3kjLxFQykxFlp0ZVjufRFl34YPY/gs7AlqWs=; b=mZyYvVh7v6gkhf5kFu//qgEPRp
 N/dFpSQV3JeWbbbB4SPlvSxxie+rf1FY1YRe3Px7lMtbypBv3tkpr1JYn7MsfPgLw7qdr4DBKWUQD
 yo3EliDwrQtgDUpFw8orOy8It0cvs7HcwdG/mJtHeLb72q4KEAwAJARdPvZVueZCowlc=;
Received: from [113.46.200.216] (helo=canpmsgout01.his.huawei.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vkBc9-0002Eo-6M for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Jan 2026 01:42:02 +0000
dkim-signature: v=1; a=rsa-sha256; d=huawei.com; s=dkim;
 c=relaxed/relaxed; q=dns/txt; h=From;
 bh=2bEsuty3kjLxFQykxFlp0ZVjufRFl34YPY/gs7AlqWs=;
 b=McpuWHBDIq8Y5wK0at/LVETNp6iocMc2Sy9DToNo543fEysg8/Qyumg73w7ceBIUDW8E2Jr3o
 qKWQJYdXhoySF6W/92ZUv7XiH+N5699eRbs1cUYSJxCUlWxhFpc2sYiwgHJ0xgAUCTBmOwgDWl4
 gVfH/fwvubzFzRz19Ghhw50=
Received: from mail.maildlp.com (unknown [172.19.162.197])
 by canpmsgout01.his.huawei.com (SkyGuard) with ESMTPS id 4dzrkq2DDHz1T4J9;
 Mon, 26 Jan 2026 09:37:39 +0800 (CST)
Received: from kwepemj200013.china.huawei.com (unknown [7.202.194.25])
 by mail.maildlp.com (Postfix) with ESMTPS id 8784B40363;
 Mon, 26 Jan 2026 09:41:48 +0800 (CST)
Received: from [10.174.179.155] (10.174.179.155) by
 kwepemj200013.china.huawei.com (7.202.194.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Mon, 26 Jan 2026 09:41:47 +0800
Message-ID: <731d5b3e-702d-4f2c-9970-67f1452ccfbb@huawei.com>
Date: Mon, 26 Jan 2026 09:41:47 +0800
MIME-Version: 1.0
User-Agent: =?UTF-8?B?TW96aWxsYSBUaHVuZGVyYmlyZCDmtYvor5XniYg=?=
To: Yun Zhou <yun.zhou@windriver.com>, <shaggy@kernel.org>
References: <20251128155150.1493986-1-yun.zhou@windriver.com>
 <2febd16b-77a3-45c7-80cb-e324d3540746@huawei.com>
 <686bc501-5263-4054-8cae-3529be86b9c5@huawei.com>
In-Reply-To: <686bc501-5263-4054-8cae-3529be86b9c5@huawei.com>
X-Originating-IP: [10.174.179.155]
X-ClientProxiedBy: kwepems100001.china.huawei.com (7.221.188.238) To
 kwepemj200013.china.huawei.com (7.202.194.25)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Ping again... Thanks 在 2025/12/22 20:05, Li Lingfeng 写道:
    > Friendly ping... > > Thanks > > 在 2025/11/29 9:15, Li Lingfeng 写道:
    >> Hi Yun, >> >> 在 2025/11/28 23:51, Yun Zhou 写道: >>> Add check_dmapctl()
    to [...] 
 
 Content analysis details:   (0.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [113.46.200.216 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1vkBc9-0002Eo-6M
Subject: Re: [Jfs-discussion] [PATCH v2] jfs: add dmapctl integrity check to
 prevent invalid operations
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
From: Li Lingfeng via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Li Lingfeng <lilingfeng3@huawei.com>
Cc: jfs-discussion@lists.sourceforge.net, yangerkun <yangerkun@huawei.com>,
 linux-kernel@vger.kernel.org, linan122@huawei.com, kovalev@altlinux.org,
 contact@arnaud-lcm.com, zheng.yu@northwestern.edu, rand.sec96@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:yun.zhou@windriver.com,m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:yangerkun@huawei.com,m:linux-kernel@vger.kernel.org,m:linan122@huawei.com,m:kovalev@altlinux.org,m:contact@arnaud-lcm.com,m:zheng.yu@northwestern.edu,m:rand.sec96@gmail.com,m:randsec96@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,huawei.com,vger.kernel.org,altlinux.org,arnaud-lcm.com,northwestern.edu,gmail.com];
	HAS_XOIP(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,huawei.com:s=dkim];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[lilingfeng3@huawei.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,huawei.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[huawei.com:replyto,huawei.com:email,huawei.com:mid,windriver.com:email]
X-Rspamd-Queue-Id: 95DA98358A
X-Rspamd-Action: no action

UGluZyBhZ2Fpbi4uLgoKVGhhbmtzCgrlnKggMjAyNS8xMi8yMiAyMDowNSwgTGkgTGluZ2Zlbmcg
5YaZ6YGTOgo+IEZyaWVuZGx5IHBpbmcuLi4KPgo+IFRoYW5rcwo+Cj4g5ZyoIDIwMjUvMTEvMjkg
OToxNSwgTGkgTGluZ2Zlbmcg5YaZ6YGTOgo+PiBIaSBZdW4sCj4+Cj4+IOWcqCAyMDI1LzExLzI4
IDIzOjUxLCBZdW4gWmhvdSDlhpnpgZM6Cj4+PiBBZGQgY2hlY2tfZG1hcGN0bCgpIHRvIHZhbGlk
YXRlIGRtYXBjdGwgc3RydWN0dXJlIGludGVncml0eSwgCj4+PiBmb2N1c2luZyBvbgo+Pj4gcHJl
dmVudGluZyBpbnZhbGlkIG9wZXJhdGlvbnMgY2F1c2VkIGJ5IG9uLWRpc2sgY29ycnVwdGlvbi4K
Pj4+Cj4+PiBLZXkgY2hlY2tzOgo+Pj4gwqAgLSBubGVhZnMgYm91bmRlZCBieSBbMCwgTFBFUkNU
TF0gKG1heGltdW0gbGVhZiBub2RlcyBwZXIgZG1hcGN0bCkuCj4+PiDCoCAtIGwybmxlYWZzIGJv
dW5kZWQgYnkgWzAsIEwyTFBFUkNUTF0gYW5kIGNvbnNpc3RlbnQgd2l0aCBubGVhZnMKPj4+IMKg
wqDCoCAobmxlYWZzIG11c3QgYmUgMl5sMm5sZWFmcykuCj4+PiDCoCAtIGxlYWZpZHggbXVzdCBi
ZSBleGFjdGx5IENUTExFQUZJTkQgKGV4cGVjdGVkIGxlYWYgaW5kZXggcG9zaXRpb24pLgo+Pj4g
wqAgLSBoZWlnaHQgYm91bmRlZCBieSBbMCwgTDJMUEVSQ1RMID4+IDFdICh2YWxpZCB0cmVlIGhl
aWdodCByYW5nZSkuCj4+PiDCoCAtIGJ1ZG1pbiB2YWxpZGl0eTogTk9GUkVFIG9ubHkgaWYgbmxl
YWZzPTA7IG90aGVyd2lzZSA+PSBCVURNSU4uCj4+PiDCoCAtIExlYWYgbm9kZXMgZml0IHdpdGhp
biBzdHJlZSBhcnJheSAobGVhZmlkeCArIG5sZWFmcyA8PSAKPj4+IENUTFRSRUVTSVpFKS4KPj4+
IMKgIC0gTGVhZiBub2RlIHZhbHVlcyBhcmUgZWl0aGVyIG5vbi1uZWdhdGl2ZSBvciBOT0ZSRUUu
Cj4+Pgo+Pj4gSW52b2tlZCBpbiBkYkFsbG9jQUcoKSwgZGJGaW5kQ3RsKCksIGRiQWRqQ3RsKCkg
YW5kIGRiRXh0ZW5kRlMoKSB3aGVuCj4+PiBhY2Nlc3NpbmcgZG1hcGN0bCBwYWdlcywgY2F0Y2hp
bmcgY29ycnVwdGlvbiBlYXJseSBiZWZvcmUgZG1hcCAKPj4+IG9wZXJhdGlvbnMKPj4+IHRyaWdn
ZXIgaW52YWxpZCBtZW1vcnkgYWNjZXNzIG9yIGxvZ2ljIGVycm9ycy4KPj4+Cj4+PiBUaGlzIGZp
eGVzIHRoZSBmb2xsb3dpbmcgVUJTQU4gd2FybmluZy4KPj4+Cj4+PiBbNTgyNDUuNjY4MDkwXVtU
MTQwMTddIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+Pj4gWzU4MjQ1LjY2
ODEwM11bVDE0MDE3XSBVQlNBTjogc2hpZnQtb3V0LW9mLWJvdW5kcyBpbiAKPj4+IGZzL2pmcy9q
ZnNfZG1hcC5jOjI2NDE6MTEKPj4+IFs1ODI0NS42NjgxMTldW1QxNDAxN10gc2hpZnQgZXhwb25l
bnQgMTEwIGlzIHRvbyBsYXJnZSBmb3IgMzItYml0IAo+Pj4gdHlwZSAnaW50Jwo+Pj4gWzU4MjQ1
LjY2ODEzN11bVDE0MDE3XSBDUFU6IDAgVUlEOiAwIFBJRDogMTQwMTcgQ29tbTogCj4+PiA0YzE5
NjZlODhjMjhmYTkgVGFpbnRlZDogR8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRSAKPj4+IDYuMTgu
MC1yYzQtMDAyNTMtZzIxY2U1ZDRiYTA0NS1kaXJ0eSAjMTI0IFBSRUVNUFRfe1JULChmdWxsKX0K
Pj4+IFs1ODI0NS42NjgxNzRdW1QxNDAxN10gVGFpbnRlZDogW0VdPVVOU0lHTkVEX01PRFVMRQo+
Pj4gWzU4MjQ1LjY2ODE3Nl1bVDE0MDE3XSBIYXJkd2FyZSBuYW1lOiBRRU1VIFVidW50dSAyNS4w
NCBQQyAoaTQ0MEZYICsgCj4+PiBQSUlYLCAxOTk2KSwgQklPUyAxLjE2LjMtZGViaWFuLTEuMTYu
My0yIDA0LzAxLzIwMTQKPj4+IFs1ODI0NS42NjgxODRdW1QxNDAxN10gQ2FsbCBUcmFjZToKPj4+
IFs1ODI0NS42NjgyMDBdW1QxNDAxN13CoCA8VEFTSz4KPj4+IFs1ODI0NS42NjgyMDhdW1QxNDAx
N13CoCBkdW1wX3N0YWNrX2x2bCsweDE4OS8weDI1MAo+Pj4gWzU4MjQ1LjY2ODI4OF1bVDE0MDE3
XcKgID8gX19wZnhfZHVtcF9zdGFja19sdmwrMHgxMC8weDEwCj4+PiBbNTgyNDUuNjY4MzAxXVtU
MTQwMTddwqAgPyBfX3BmeF9fcHJpbnRrKzB4MTAvMHgxMAo+Pj4gWzU4MjQ1LjY2ODMxNV1bVDE0
MDE3XcKgID8gbG9ja19tZXRhcGFnZSsweDMwMy8weDQwMCBbamZzXQo+Pj4gWzU4MjQ1LjY2ODQw
Nl1bVDE0MDE3XcKgIHVic2FuX2VwaWxvZ3VlKzB4YS8weDQwCj4+PiBbNTgyNDUuNjY4NDIyXVtU
MTQwMTddIF9fdWJzYW5faGFuZGxlX3NoaWZ0X291dF9vZl9ib3VuZHMrMHgzODYvMHg0MTAKPj4+
IFs1ODI0NS42Njg0NjJdW1QxNDAxN13CoCBkYlNwbGl0KzB4MWY4LzB4MjAwIFtqZnNdCj4+PiBb
NTgyNDUuNjY4NTQzXVtUMTQwMTddwqAgZGJBZGpDdGwrMHgzNGMvMHhhMjAgW2pmc10KPj4+IFs1
ODI0NS42Njg2MjhdW1QxNDAxN13CoCBkYkFsbG9jTmVhcisweDJlZS8weDNkMCBbamZzXQo+Pj4g
WzU4MjQ1LjY2ODcxMF1bVDE0MDE3XcKgIGRiQWxsb2MrMHg5MzMvMHhiYTAgW2pmc10KPj4+IFs1
ODI0NS42Njg3OTddW1QxNDAxN13CoCBlYV93cml0ZSsweDM3NC8weGRkMCBbamZzXQo+Pj4gWzU4
MjQ1LjY2ODg4OF1bVDE0MDE3XcKgID8gX19wZnhfZWFfd3JpdGUrMHgxMC8weDEwIFtqZnNdCj4+
PiBbNTgyNDUuNjY4OTY2XVtUMTQwMTddwqAgPyBfX2pmc19zZXR4YXR0cisweDc2ZS8weDExMjAg
W2pmc10KPj4+IFs1ODI0NS42NjkwNDZdW1QxNDAxN13CoCBfX2pmc19zZXR4YXR0cisweGEwMS8w
eDExMjAgW2pmc10KPj4+IFs1ODI0NS42NjkxMzVdW1QxNDAxN13CoCA/IF9fcGZ4X19famZzX3Nl
dHhhdHRyKzB4MTAvMHgxMCBbamZzXQo+Pj4gWzU4MjQ1LjY2OTIxNl1bVDE0MDE3XcKgID8gbXV0
ZXhfbG9ja19uZXN0ZWQrMHgxNTQvMHgxZDAKPj4+IFs1ODI0NS42NjkyNTJdW1QxNDAxN13CoCA/
IF9famZzX3hhdHRyX3NldCsweGI5LzB4MTcwIFtqZnNdCj4+PiBbNTgyNDUuNjY5MzMzXVtUMTQw
MTddwqAgX19qZnNfeGF0dHJfc2V0KzB4ZGEvMHgxNzAgW2pmc10KPj4+IFs1ODI0NS42Njk0MzBd
W1QxNDAxN13CoCA/IF9fcGZ4X19famZzX3hhdHRyX3NldCsweDEwLzB4MTAgW2pmc10KPj4+IFs1
ODI0NS42Njk1MDldW1QxNDAxN13CoCA/IHhhdHRyX2Z1bGxfbmFtZSsweDZmLzB4OTAKPj4+IFs1
ODI0NS42Njk1NDZdW1QxNDAxN13CoCA/IGpmc194YXR0cl9zZXQrMHgzMy8weDYwIFtqZnNdCj4+
PiBbNTgyNDUuNjY5NjM2XVtUMTQwMTddwqAgPyBfX3BmeF9qZnNfeGF0dHJfc2V0KzB4MTAvMHgx
MCBbamZzXQo+Pj4gWzU4MjQ1LjY2OTcyNl1bVDE0MDE3XcKgIF9fdmZzX3NldHhhdHRyKzB4NDNj
LzB4NDgwCj4+PiBbNTgyNDUuNjY5NzQzXVtUMTQwMTddwqAgX192ZnNfc2V0eGF0dHJfbm9wZXJt
KzB4MTJkLzB4NjYwCj4+PiBbNTgyNDUuNjY5NzU2XVtUMTQwMTddwqAgdmZzX3NldHhhdHRyKzB4
MTZiLzB4MmYwCj4+PiBbNTgyNDUuNjY5NzY4XVtUMTQwMTddwqAgPyBfX3BmeF92ZnNfc2V0eGF0
dHIrMHgxMC8weDEwCj4+PiBbNTgyNDUuNjY5NzgyXVtUMTQwMTddwqAgZmlsZW5hbWVfc2V0eGF0
dHIrMHgyNzQvMHg2MDAKPj4+IFs1ODI0NS42Njk3OTVdW1QxNDAxN13CoCA/IF9fcGZ4X2ZpbGVu
YW1lX3NldHhhdHRyKzB4MTAvMHgxMAo+Pj4gWzU4MjQ1LjY2OTgwNl1bVDE0MDE3XcKgID8gZ2V0
bmFtZV9mbGFncysweDFlNS8weDU0MAo+Pj4gWzU4MjQ1LjY2OTgyOV1bVDE0MDE3XcKgIHBhdGhf
c2V0eGF0dHJhdCsweDM2NC8weDNhMAo+Pj4gWzU4MjQ1LjY2OTg0MF1bVDE0MDE3XcKgID8gX19w
ZnhfcGF0aF9zZXR4YXR0cmF0KzB4MTAvMHgxMAo+Pj4gWzU4MjQ1LjY2OTg1OV1bVDE0MDE3XcKg
ID8gX19zZV9zeXNfY2hkaXIrMHgxYjkvMHgyODAKPj4+IFs1ODI0NS42Njk4NzZdW1QxNDAxN13C
oCBfX3g2NF9zeXNfbHNldHhhdHRyKzB4YmYvMHhlMAo+Pj4gWzU4MjQ1LjY2OTg4OF1bVDE0MDE3
XcKgIGRvX3N5c2NhbGxfNjQrMHhmYS8weGZhMAo+Pj4gWzU4MjQ1LjY2OTkwMV1bVDE0MDE3XcKg
ID8gbG9ja2RlcF9oYXJkaXJxc19vbisweDljLzB4MTUwCj4+PiBbNTgyNDUuNjY5OTEzXVtUMTQw
MTddwqAgPyBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg3Ny8weDdmCj4+PiBbNTgy
NDUuNjY5OTI3XVtUMTQwMTddwqAgPyBleGNfcGFnZV9mYXVsdCsweGFiLzB4MTAwCj4+PiBbNTgy
NDUuNjY5OTM3XVtUMTQwMTddIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDc3LzB4
N2YKPj4+Cj4+PiBSZXBvcnRlZC1ieTogc3l6Ym90KzRjMTk2NmU4OGMyOGZhOTZlMDUzQHN5emth
bGxlci5hcHBzcG90bWFpbC5jb20KPj4+IFNpZ25lZC1vZmYtYnk6IFl1biBaaG91IDx5dW4uemhv
dUB3aW5kcml2ZXIuY29tPgo+Pj4gLS0tCj4+PiDCoCBmcy9qZnMvamZzX2RtYXAuYyB8IDExMyAK
Pj4+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KPj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCAxMTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc19kbWFwLmMgYi9mcy9qZnMvamZzX2RtYXAuYwo+Pj4g
aW5kZXggY2RmYTY5OWNkN2M4Li4zZjFlZDgyYmFhM2QgMTAwNjQ0Cj4+PiAtLS0gYS9mcy9qZnMv
amZzX2RtYXAuYwo+Pj4gKysrIGIvZnMvamZzL2pmc19kbWFwLmMKPj4+IEBAIC0xMzMsNiArMTMz
LDkyIEBAIHN0YXRpYyBjb25zdCBzOCBidWR0YWJbMjU2XSA9IHsKPj4+IMKgwqDCoMKgwqAgMiwg
MSwgMSwgMSwgMSwgMCwgMCwgMCwgMSwgMCwgMCwgMCwgMSwgMCwgMCwgLTEKPj4+IMKgIH07Cj4+
PiDCoCArLyoKPj4+ICsgKiBjaGVja19kbWFwY3RsIC0gVmFsaWRhdGUgaW50ZWdyaXR5IG9mIGEg
ZG1hcGN0bCBzdHJ1Y3R1cmUKPj4+ICsgKiBAZGNwOiBQb2ludGVyIHRvIHRoZSBkbWFwY3RsIHN0
cnVjdHVyZSB0byBjaGVjawo+Pj4gKyAqCj4+PiArICogUmV0dXJuOiB0cnVlIGlmIHZhbGlkLCBm
YWxzZSBpZiBjb3JydXB0ZWQKPj4+ICsgKi8KPj4+ICtzdGF0aWMgYm9vbCBjaGVja19kbWFwY3Rs
KHN0cnVjdCBkbWFwY3RsICpkY3ApCj4+PiArewo+Pj4gK8KgwqDCoCBzOCBidWRtaW4gPSBkY3At
PmJ1ZG1pbjsKPj4+ICvCoMKgwqAgdTMyIG5sZWFmcywgbDJubGVhZnMsIGxlYWZpZHgsIGhlaWdo
dDsKPj4+ICvCoMKgwqAgaW50IGk7Cj4+PiArCj4+PiArwqDCoMKgIG5sZWFmcyA9IGxlMzJfdG9f
Y3B1KGRjcC0+bmxlYWZzKTsKPj4+ICvCoMKgwqAgLyogQ2hlY2sgYmFzaWMgZmllbGQgcmFuZ2Vz
ICovCj4+PiArwqDCoMKgIGlmICh1bmxpa2VseShubGVhZnMgPiBMUEVSQ1RMKSkgewo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGpmc19lcnIoImRtYXBjdGw6IGludmFsaWQgbmxlYWZzICV1IChtYXggJXUp
IiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5sZWFmcywgTFBFUkNUTCk7Cj4+PiArwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIGZhbHNlOwo+Pj4gK8KgwqDCoCB9Cj4+PiArCj4+PiArwqDCoMKg
IGwybmxlYWZzID0gbGUzMl90b19jcHUoZGNwLT5sMm5sZWFmcyk7Cj4+PiArwqDCoMKgIGlmICh1
bmxpa2VseShsMm5sZWFmcyA+IEwyTFBFUkNUTCkpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBqZnNf
ZXJyKCJkbWFwY3RsOiBpbnZhbGlkIGwybmxlYWZzICV1IChtYXggJXUpIiwKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGwybmxlYWZzLCBMMkxQRVJDVEwpOwo+Pj4gK8KgwqDCoMKgwqDCoMKg
IHJldHVybiBmYWxzZTsKPj4+ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gK8KgwqDCoCAvKiBWZXJpZnkg
bmxlYWZzIG1hdGNoZXMgbDJubGVhZnMgKG11c3QgYmUgcG93ZXIgb2YgdHdvKSAqLwo+Pj4gK8Kg
wqDCoCBpZiAodW5saWtlbHkoKDFVIDw8IGwybmxlYWZzKSAhPSBubGVhZnMpKSB7Cj4+PiArwqDC
oMKgwqDCoMKgwqAgamZzX2VycigiZG1hcGN0bDogbmxlYWZzICV1ICE9IDJeJXUiLAo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgbmxlYWZzLCBsMm5sZWFmcyk7Cj4+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIGZhbHNlOwo+Pj4gK8KgwqDCoCB9Cj4+PiArCj4+PiArwqDCoMKgIGxlYWZpZHgg
PSBsZTMyX3RvX2NwdShkY3AtPmxlYWZpZHgpOwo+Pj4gK8KgwqDCoCAvKiBDaGVjayBsZWFmIGlu
ZGV4IG1hdGNoZXMgZXhwZWN0ZWQgcG9zaXRpb24gKi8KPj4+ICvCoMKgwqAgaWYgKHVubGlrZWx5
KGxlYWZpZHggIT0gQ1RMTEVBRklORCkpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBqZnNfZXJyKCJk
bWFwY3RsOiBpbnZhbGlkIGxlYWZpZHggJXUgKGV4cGVjdGVkICV1KSIsCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBsZWFmaWR4LCBDVExMRUFGSU5EKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gZmFsc2U7Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgaGVpZ2h0ID0gbGUz
Ml90b19jcHUoZGNwLT5oZWlnaHQpOwo+Pj4gK8KgwqDCoCAvKiBDaGVjayB0cmVlIGhlaWdodCBp
cyB3aXRoaW4gdmFsaWQgcmFuZ2UgKi8KPj4+ICvCoMKgwqAgaWYgKHVubGlrZWx5KGhlaWdodCA+
IChMMkxQRVJDVEwgPj4gMSkpKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgamZzX2VycigiZG1hcGN0
bDogaW52YWxpZCBoZWlnaHQgJXUgKG1heCAldSkiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaGVpZ2h0LCBMMkxQRVJDVEwgPj4gMSk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGZh
bHNlOwo+Pj4gK8KgwqDCoCB9Cj4+PiArCj4+PiArwqDCoMKgIC8qIENoZWNrIGJ1ZG1pbiBpcyB2
YWxpZCAoY2Fubm90IGJlIE5PRlJFRSBmb3Igbm9uLWVtcHR5IHRyZWUpICovCj4+PiArwqDCoMKg
IGlmIChidWRtaW4gPT0gTk9GUkVFKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHVubGlrZWx5
KG5sZWFmcyA+IDApKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBqZnNfZXJyKCJkbWFw
Y3RsOiBidWRtaW4gaXMgTk9GUkVFIGJ1dCBubGVhZnMgJXUiLAo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBubGVhZnMpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIGZhbHNlOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4+ICvCoMKgwqAgfSBlbHNlIGlmICh1
bmxpa2VseShidWRtaW4gPCBCVURNSU4pKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgamZzX2Vycigi
ZG1hcGN0bDogaW52YWxpZCBidWRtaW4gJWQgKG1pbiAlZCkiLAo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgYnVkbWluLCBCVURNSU4pOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBmYWxz
ZTsKPj4+ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gK8KgwqDCoCAvKiBDaGVjayBsZWFmIG5vZGVzIGZp
dCB3aXRoaW4gc3RyZWUgYXJyYXkgKi8KPj4+ICvCoMKgwqAgaWYgKHVubGlrZWx5KGxlYWZpZHgg
KyBubGVhZnMgPiBDVExUUkVFU0laRSkpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBqZnNfZXJyKCJk
bWFwY3RsOiBsZWFmIHJhbmdlIGV4Y2VlZHMgc3RyZWUgc2l6ZSAoZW5kICV1ID4gCj4+PiAldSki
LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGVhZmlkeCArIG5sZWFmcywgQ1RMVFJFRVNJ
WkUpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBmYWxzZTsKPj4+ICvCoMKgwqAgfQo+Pj4g
Kwo+Pj4gK8KgwqDCoCAvKiBDaGVjayBsZWFmIG5vZGVzIGhhdmUgdmFsaWQgdmFsdWVzICovCj4+
PiArwqDCoMKgIGZvciAoaSA9IGxlYWZpZHg7IGkgPCBsZWFmaWR4ICsgbmxlYWZzOyBpKyspIHsK
Pj4+ICvCoMKgwqDCoMKgwqDCoCBzOCB2YWwgPSBkY3AtPnN0cmVlW2ldOwo+Pj4gK8KgwqDCoMKg
wqDCoMKgIGlmICh1bmxpa2VseSh2YWwgPCBOT0ZSRUUpKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBqZnNfZXJyKCJkbWFwY3RsOiBpbnZhbGlkIGxlYWYgdmFsdWUgJWQgYXQgaW5kZXgg
JWQiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZhbCwgaSk7
Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7Cj4+PiArwqDCoMKgwqDC
oMKgwqAgfSBlbHNlIGlmICh1bmxpa2VseSh2YWwgPiAzMSkpIHsKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGpmc19lcnIoImRtYXBjdGw6IGxlYWYgdmFsdWUgJWQgdG9vIGxhcmdlIGF0IGlu
ZGV4ICVkIiwgCj4+PiB2YWwsIGkpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IGZhbHNlOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4+ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gK8Kg
wqDCoCByZXR1cm4gdHJ1ZTsKPj4+ICt9Cj4+PiArCj4+PiDCoCAvKgo+Pj4gwqDCoCAqIE5BTUU6
wqDCoMKgIGRiTW91bnQoKQo+Pj4gwqDCoCAqCj4+PiBAQCAtMTM3Miw3ICsxNDU4LDcgQEAgZGJB
bGxvY0FHKHN0cnVjdCBibWFwICogYm1wLCBpbnQgYWdubywgczY0IAo+Pj4gbmJsb2NrcywgaW50
IGwybmIsIHM2NCAqIHJlc3VsdHMpCj4+PiDCoMKgwqDCoMKgIGRjcCA9IChzdHJ1Y3QgZG1hcGN0
bCAqKSBtcC0+ZGF0YTsKPj4+IMKgwqDCoMKgwqAgYnVkbWluID0gZGNwLT5idWRtaW47Cj4+PiDC
oCAtwqDCoMKgIGlmIChkY3AtPmxlYWZpZHggIT0gY3B1X3RvX2xlMzIoQ1RMTEVBRklORCkpIHsK
Pj4+ICvCoMKgwqAgaWYgKHVubGlrZWx5KCFjaGVja19kbWFwY3RsKGRjcCkpKSB7Cj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgamZzX2Vycm9yKGJtcC0+ZGJfaXBibWFwLT5pX3NiLCAiQ29ycnVwdCBk
bWFwY3RsIHBhZ2VcbiIpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJlbGVhc2VfbWV0YXBhZ2Uo
bXApOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlPOwo+Pj4gQEAgLTE3MDIsNyAr
MTc4OCw3IEBAIHN0YXRpYyBpbnQgZGJGaW5kQ3RsKHN0cnVjdCBibWFwICogYm1wLCBpbnQgCj4+
PiBsMm5iLCBpbnQgbGV2ZWwsIHM2NCAqIGJsa25vKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGRj
cCA9IChzdHJ1Y3QgZG1hcGN0bCAqKSBtcC0+ZGF0YTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBi
dWRtaW4gPSBkY3AtPmJ1ZG1pbjsKPj4+IMKgIC3CoMKgwqDCoMKgwqDCoCBpZiAoZGNwLT5sZWFm
aWR4ICE9IGNwdV90b19sZTMyKENUTExFQUZJTkQpKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaWYg
KHVubGlrZWx5KCFjaGVja19kbWFwY3RsKGRjcCkpKSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBqZnNfZXJyb3IoYm1wLT5kYl9pcGJtYXAtPmlfc2IsCj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiQ29ycnVwdCBkbWFwY3RsIHBhZ2VcbiIpOwo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVsZWFzZV9tZXRhcGFnZShtcCk7Cj4+PiBAQCAt
MjQ4NSw3ICsyNTcxLDcgQEAgZGJBZGpDdGwoc3RydWN0IGJtYXAgKiBibXAsIHM2NCBibGtubywg
aW50IAo+Pj4gbmV3dmFsLCBpbnQgYWxsb2MsIGludCBsZXZlbCkKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gLUVJTzsKPj4+IMKgwqDCoMKgwqAgZGNwID0gKHN0cnVjdCBkbWFwY3RsICop
IG1wLT5kYXRhOwo+Pj4gwqAgLcKgwqDCoCBpZiAoZGNwLT5sZWFmaWR4ICE9IGNwdV90b19sZTMy
KENUTExFQUZJTkQpKSB7Cj4+PiArwqDCoMKgIGlmICh1bmxpa2VseSghY2hlY2tfZG1hcGN0bChk
Y3ApKSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGpmc19lcnJvcihibXAtPmRiX2lwYm1hcC0+
aV9zYiwgIkNvcnJ1cHQgZG1hcGN0bCBwYWdlXG4iKTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZWxlYXNlX21ldGFwYWdlKG1wKTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTzsK
Pj4+IEBAIC0zNDU0LDYgKzM1NDAsMTEgQEAgaW50IGRiRXh0ZW5kRlMoc3RydWN0IGlub2RlICpp
cGJtYXAsIHM2NCAKPj4+IGJsa25vLMKgwqDCoCBzNjQgbmJsb2NrcykKPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gLUVJTzsKPj4+IMKgwqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoCBsMmRj
cCA9IChzdHJ1Y3QgZG1hcGN0bCAqKSBsMm1wLT5kYXRhOwo+Pj4gK8KgwqDCoCBpZiAodW5saWtl
bHkoIWNoZWNrX2RtYXBjdGwobDJkY3ApKSkgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGpmc19lcnJv
cihpcGJtYXAtPmlfc2IsICJDb3JydXB0IGRtYXBjdGwgcGFnZVxuIik7Cj4+PiArwqDCoMKgwqDC
oMKgwqAgcmVsZWFzZV9tZXRhcGFnZShsMm1wKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVJTzsKPj4+ICvCoMKgwqAgfQo+Pj4gwqAgwqDCoMKgwqDCoCAvKiBjb21wdXRlIHN0YXJ0IEwx
ICovCj4+PiDCoMKgwqDCoMKgIGsgPSBibGtubyA+PiBMMk1BWEwxU0laRTsKPj4+IEBAIC0zNDcx
LDYgKzM1NjIsMTAgQEAgaW50IGRiRXh0ZW5kRlMoc3RydWN0IGlub2RlICppcGJtYXAsIHM2NCAK
Pj4+IGJsa25vLMKgwqDCoCBzNjQgbmJsb2NrcykKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmIChsMW1wID09IE5VTEwpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGdvdG8gZXJyb3V0Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbDFkY3AgPSAo
c3RydWN0IGRtYXBjdGwgKikgbDFtcC0+ZGF0YTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGlmICh1bmxpa2VseSghY2hlY2tfZG1hcGN0bChsMWRjcCkpKSB7Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGpmc19lcnJvcihpcGJtYXAtPmlfc2IsICJDb3JydXB0IGRtYXBj
dGwgcGFnZVxuIik7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJy
b3V0Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4gwqAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLyogY29tcHV0ZSBzdGFydCBMMCAqLwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaiA9IChibGtubyAmIChNQVhMMVNJWkUgLSAxKSkgPj4gTDJNQVhMMFNJWkU7Cj4+
PiBAQCAtMzQ4NCw2ICszNTc5LDEwIEBAIGludCBkYkV4dGVuZEZTKHN0cnVjdCBpbm9kZSAqaXBi
bWFwLCBzNjQgCj4+PiBibGtubyzCoMKgwqAgczY0IG5ibG9ja3MpCj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyb3V0Owo+Pj4gwqAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgbDFkY3AgPSAoc3RydWN0IGRtYXBjdGwgKikgbDFtcC0+ZGF0YTsKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICh1bmxpa2VseSghY2hlY2tfZG1hcGN0bChsMWRjcCkp
KSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGpmc19lcnJvcihpcGJtYXAt
Pmlfc2IsICJDb3JydXB0IGRtYXBjdGwgcGFnZVxuIik7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGdvdG8gZXJyb3V0Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+
Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogY29tcHV0ZSBzdGFydCBMMCAqLwo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaiA9IDA7Cj4+PiBAQCAtMzUwMyw2ICszNjAy
LDEwIEBAIGludCBkYkV4dGVuZEZTKHN0cnVjdCBpbm9kZSAqaXBibWFwLCBzNjQgCj4+PiBibGtu
byzCoMKgwqAgczY0IG5ibG9ja3MpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmIChsMG1wID09IE5VTEwpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZ290byBlcnJvdXQ7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGwwZGNwID0gKHN0cnVjdCBkbWFwY3RsICopIGwwbXAtPmRhdGE7Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICh1bmxpa2VseSghY2hlY2tfZG1hcGN0bChsMGRj
cCkpKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgamZzX2Vy
cm9yKGlwYm1hcC0+aV9zYiwgIkNvcnJ1cHQgZG1hcGN0bCBwYWdlXG4iKTsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycm91dDsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAvKiBjb21wdXRlIHN0YXJ0IGRtYXAgKi8KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaSA9IChibGtubyAmIChNQVhMMFNJWkUgLSAxKSkgPj4KPj4+IEBA
IC0zNTE4LDYgKzM2MjEsMTAgQEAgaW50IGRiRXh0ZW5kRlMoc3RydWN0IGlub2RlICppcGJtYXAs
IHM2NCAKPj4+IGJsa25vLMKgwqDCoCBzNjQgbmJsb2NrcykKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycm91dDsKPj4+IMKgIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbDBkY3AgPSAoc3RydWN0IGRtYXBjdGwgKikgbDBtcC0+
ZGF0YTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHVubGlrZWx5KCFj
aGVja19kbWFwY3RsKGwwZGNwKSkpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBqZnNfZXJyb3IoaXBibWFwLT5pX3NiLCAiQ29ycnVwdCBkbWFwY3RsIHBhZ2Vc
biIpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJy
b3V0Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+PiDCoCDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIGNvbXB1dGUgc3RhcnQgZG1hcCAqLwo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpID0gMDsKPj4KPj4gVGhhbmsgeW91
IGZvciB0aGUgcGF0Y2guCj4+IEl0IGFsc28gcmVzb2x2ZXMgdGhlIGlzc3VlIGRlc2NyaWJlZCBp
biB0aGUgbGlua1sxXS4KPj4gWzFdIAo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvYzIw
MWNiZTAtNWY1Mi00NTcyLWEwNGMtZGMxNjVlY2NmZjk1QGh1YXdlaS5jb20vCj4+Cj4+IFRlc3Rl
ZC1ieTogTGkgTGluZ2ZlbmcgPGxpbGluZ2ZlbmczQGh1YXdlaS5jb20+Cj4+CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFp
bGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
