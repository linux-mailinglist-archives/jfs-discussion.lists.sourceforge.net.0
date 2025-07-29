Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DC4B14F34
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Jul 2025 16:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xe3NlnnwNPh96X+uCT2mQPtPxAK+XosYsjjldo7T+9E=; b=c8ltgIj3p5avdpgSkbWztHCXBE
	FrjRqdxw7igz0He3oybA2HYUVlKXr+jWVmtycVn+57S4cMLkl+rW9NaHvV53DtzXq6nt3G8Phih5+
	Vq+cES+byMkjc2odsCAoyBwBT1+C+iugVxirZoq1dsFfZDNwiHh6ekbVa3ySGAnLi+zI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uglFe-0002Z3-Ec;
	Tue, 29 Jul 2025 14:24:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Markus.Elfring@web.de>) id 1uglFd-0002Yv-9v
 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Jul 2025 14:24:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:Subject:References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dF5ZI7eobCdwBR53e3yTpvGGc4brQ3ds8RXh7qzIz9w=; b=HiUvfvPMe6FNJ3XjjaKq091XAJ
 L4F/nYz8cm7F81NIu/WKBvPrP/bIPrHV2LnDpZGs5ef3dM3UHCv2dUmClrivXgyRTQ+TANRbU0y+9
 QKheKKyp8i+deygLspW4fJp4uql0tMFNljTvkNIgYGrJHD0AHR8FMcYrhPTgRfHb9LlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Subject:
 References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dF5ZI7eobCdwBR53e3yTpvGGc4brQ3ds8RXh7qzIz9w=; b=bqb2OFhgS1BMpIZ/ZfYy4AwdFQ
 RLAqQWnXjjSOpvaW64zGQIGxf2u5UBwwdkwZECOhbDHMsU8Xw/+cEfXoCs+hUleOO406G7QgYqgU1
 Hh7pUHOk8nqE0X/uTlqdb89ck7OdGmTrp0tnSY91y96dLwLKDuB0MeOgfvtf70Frnjhg=;
Received: from mout.web.de ([212.227.17.12])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uglFc-0002pI-5A for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Jul 2025 14:24:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
 s=s29768273; t=1753799017; x=1754403817; i=markus.elfring@web.de;
 bh=dF5ZI7eobCdwBR53e3yTpvGGc4brQ3ds8RXh7qzIz9w=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=T7THlioUFPOFqg4g+zBs+QHZ1sDd1n507Y2PqlicV4/btDq4e2y4TVZrO39FWKKX
 t4+aIyDbw0bPGIvkzFk+YnVpoa4CNlj0R5KsM08G8iEU7yoJvZ/g8+iDE6EFzjUf0
 MWYPTMRlR/Av4v725Z3LKez8Z1Vs/NaomJqymEV2zc4ORs6nQHgIc/yiSIvNOOFlB
 ZHLu5LphuseD0pnlILCLTehT7p9KnC/WicJeNVNIOxw+ptiwx+TQXV7dG77RMtqm0
 ciQcnxq5wem/ZW6uTKAikonKL2CYT001KOLW7LaAyuDAmnS1FcbTi0K1WA9Wi545Y
 KkAM5LuoZOUHYKmuGA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.69.201]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MgRQD-1uBWxb45B1-00qYYB; Tue, 29
 Jul 2025 16:23:37 +0200
Message-ID: <8d908a98-bfb1-4008-9944-c33dc035d42f@web.de>
Date: Tue, 29 Jul 2025 16:23:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Zheng Yu <zheng.yu@northwestern.edu>,
 jfs-discussion@lists.sourceforge.net, Dave Kleikamp <shaggy@kernel.org>
References: <20250729000508.3517823-1-zheng.yu@northwestern.edu>
Content-Language: en-GB, de-DE
In-Reply-To: <20250729000508.3517823-1-zheng.yu@northwestern.edu>
X-Provags-ID: V03:K1:a6fgcWczpQnQRayUw/Xv+eSQTEERJkSMZ0OYf65E9dKUxibf7+M
 b+e0PXx2TNKJHXTITO6EF+PNB5jOMP6RBuj7ViQ9vqSGkQXl34QIYWnFrgEeFH9WOe1/1k8
 yn50ctML6Y0JmNtwq1CaLprPFO7t2tRIc08M6teNB06WBfmgw9gCDjMmoI3I+vPK/NZMcxg
 LeRzdtGNR6fBBYOXAZDCA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:9WnkSHYJTB8=;sWjWbOABOLqsEFra5bY/R5KVSE3
 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
 1Q==
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  … > +++ b/fs/jfs/jfs_dmap.c > @@ -1809,8 +1809,10 @@ dbAllocCtl(struct
    bmap * bmp, s64 nblocks, int l2nb, s64 blkno, s64 * results) > return -EIO;
    > dp = (struct dmap *) mp->data; > > - if (dp->tree [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [markus.elfring(at)web.de]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [212.227.17.12 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uglFc-0002pI-5A
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix metapage reference count leak
 in dbAllocCtl
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
From: Markus Elfring via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Markus Elfring <Markus.Elfring@web.de>
Cc: Jeongjun Park <aha310510@gmail.com>, Edward Adam Davis <eadavis@qq.com>,
 LKML <linux-kernel@vger.kernel.org>, Vasiliy Kovalev <kovalev@altlinux.org>,
 Nihar Chaithanya <niharchaithanya@gmail.com>,
 Zheng Yu <zheng.yu@northwestern.edu>, Rand Deeb <rand.sec96@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

4oCmCj4gKysrIGIvZnMvamZzL2pmc19kbWFwLmMKPiBAQCAtMTgwOSw4ICsxODA5LDEwIEBAIGRi
QWxsb2NDdGwoc3RydWN0IGJtYXAgKiBibXAsIHM2NCBuYmxvY2tzLCBpbnQgbDJuYiwgczY0IGJs
a25vLCBzNjQgKiByZXN1bHRzKQo+ICAJCQlyZXR1cm4gLUVJTzsKPiAgCQlkcCA9IChzdHJ1Y3Qg
ZG1hcCAqKSBtcC0+ZGF0YTsKPiAgCj4gLQkJaWYgKGRwLT50cmVlLmJ1ZG1pbiA8IDApCj4gKwkJ
aWYgKGRwLT50cmVlLmJ1ZG1pbiA8IDApIHsKPiArCQkJcmVsZWFzZV9tZXRhcGFnZShtcCk7Cj4g
IAkJCXJldHVybiAtRUlPOwo+ICsJCX0K4oCmCgpXb3VsZCBpdCBiZSBhIGJpdCBuaWNlciB0byB1
c2UgYW4gYWRkaXRpb25hbCBsYWJlbCBmb3IgdGhpcyBjYXNlPwoKCQkJcmMgPSAtRUlPOwoJCQln
b3RvIHJlbGVhc2VfbWV0YXBhZ2U7CgoKUmVnYXJkcywKTWFya3VzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
