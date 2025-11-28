Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC00C907A0
	for <lists+jfs-discussion@lfdr.de>; Fri, 28 Nov 2025 02:18:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0etC2zuzSovDVMk+KOZK0zDwez/YyXBWAl6pZ1xSYWI=; b=LZYOTyTMU2O4MRO1yIQF/S+xTQ
	V25ybUU5q967JVoSfYSbEMf4qpK9i7wTtXjyY+RmGsvXuNx8+JivnYwCdzPlyPcK/8BFfDjCVsnes
	XIc85/bwh4p5BrV3vWKa0aAmnjbBnvrMmk4B74K6Po2ISGbwKW94fCd31hUTh2lA05Ww=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vOn7X-00067P-Kg;
	Fri, 28 Nov 2025 01:17:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lilingfeng3@huawei.com>) id 1vOn7V-00067F-Nq
 for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Nov 2025 01:17:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C5x0UY5o0KUUhiEzhFO8wEmgNGIGsvLVcJS2YYZXdBA=; b=IYCJIG9PAeeKJnCXjkIgwPO8mK
 UV5Uqs43JINuxLAgYjJP8NnG3uVc0kyBLj9FgbLOdSjFgQDSQLz5K0Tu4Gv4PRVxJYaZWjE0zxwGD
 PVyPxOMJrBOMa6u7ncTF3cbzplLe7oRvyPWAyOl/6Hzn4d+xmlPmEiims/cz8yo5rT4E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C5x0UY5o0KUUhiEzhFO8wEmgNGIGsvLVcJS2YYZXdBA=; b=N1M8yvzZYTkoiFQEgPcW5+Ylhr
 7CujsTjTtCHjgRo1jF5rcHFSbzwAh1Wf/nd/C3Qnlc5UpvFc4hBOFU116AQrGSNHGnhBH/GG98coV
 +Tx5qkuRuSKRZbOzoSQt/R8v641brRMq6CuHJjztH43eeUFsVb3M7KowSYe4uHe6VdIk=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vOn7U-0002ZE-AD for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Nov 2025 01:17:57 +0000
dkim-signature: v=1; a=rsa-sha256; d=huawei.com; s=dkim;
 c=relaxed/relaxed; q=dns/txt; h=From;
 bh=C5x0UY5o0KUUhiEzhFO8wEmgNGIGsvLVcJS2YYZXdBA=;
 b=coNDbZXnfmHPUFaVvYRNFTrygcnwPjOo0m1k9EyMQ9LIUulzGMLWuHqhBb0voxXLv5BWbimgt
 /Fo92Ep6NKZwl8ESdWdpYZmW8YSBhA+tYY1cHMZzKzg9QjZ7qPp0hr7Ff/uHxdnh+dD4OhSXJte
 1AsKb5MmzoKFCCKbWJhv92Y=
Received: from canpmsgout06.his.huawei.com (unknown [172.19.92.157])
 by szxga01-in.huawei.com (SkyGuard) with ESMTPS id 4dHb4B6LFXz1BGYJ
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 28 Nov 2025 09:16:58 +0800 (CST)
dkim-signature: v=1; a=rsa-sha256; d=huawei.com; s=dkim;
 c=relaxed/relaxed; q=dns/txt; h=From;
 bh=C5x0UY5o0KUUhiEzhFO8wEmgNGIGsvLVcJS2YYZXdBA=;
 b=coNDbZXnfmHPUFaVvYRNFTrygcnwPjOo0m1k9EyMQ9LIUulzGMLWuHqhBb0voxXLv5BWbimgt
 /Fo92Ep6NKZwl8ESdWdpYZmW8YSBhA+tYY1cHMZzKzg9QjZ7qPp0hr7Ff/uHxdnh+dD4OhSXJte
 1AsKb5MmzoKFCCKbWJhv92Y=
Received: from mail.maildlp.com (unknown [172.19.163.48])
 by canpmsgout06.his.huawei.com (SkyGuard) with ESMTPS id 4dHb2q3BTTzRhQf;
 Fri, 28 Nov 2025 09:15:47 +0800 (CST)
Received: from kwepemj200013.china.huawei.com (unknown [7.202.194.25])
 by mail.maildlp.com (Postfix) with ESMTPS id 6ED41180478;
 Fri, 28 Nov 2025 09:17:36 +0800 (CST)
Received: from [10.174.179.155] (10.174.179.155) by
 kwepemj200013.china.huawei.com (7.202.194.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 28 Nov 2025 09:17:35 +0800
Message-ID: <a394bfd5-44ac-4f8c-b784-a22f4a13fe9a@huawei.com>
Date: Fri, 28 Nov 2025 09:17:35 +0800
MIME-Version: 1.0
User-Agent: =?UTF-8?B?TW96aWxsYSBUaHVuZGVyYmlyZCDmtYvor5XniYg=?=
To: "Zhou, Yun" <yun.zhou@windriver.com>, <shaggy@kernel.org>
References: <20251120154413.1043174-1-yun.zhou@windriver.com>
 <c201cbe0-5f52-4572-a04c-dc165eccff95@huawei.com>
 <72461ffe-925a-46e4-bb25-19128d030f79@windriver.com>
In-Reply-To: <72461ffe-925a-46e4-bb25-19128d030f79@windriver.com>
X-Originating-IP: [10.174.179.155]
X-ClientProxiedBy: kwepems200001.china.huawei.com (7.221.188.67) To
 kwepemj200013.china.huawei.com (7.202.194.25)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Yun, 在 2025/11/28 8:31, Zhou, Yun 写道: > Hi Lingfeng,
    > > > > On 11/24/25 19:42, Li Lingfeng wrote: >> CAUTION: This email comes
    from a non Wind River email account! >> Do not click links or open atta [...]
    
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
X-Headers-End: 1vOn7U-0002ZE-AD
Subject: Re: [Jfs-discussion] [PATCH] jfs: add dmapctl integrity check to
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
 eadavis@qq.com, linux-kernel@vger.kernel.org, linan122@huawei.com,
 kovalev@altlinux.org, contact@arnaud-lcm.com, zheng.yu@northwestern.edu,
 rand.sec96@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGkgWXVuLAoK5ZyoIDIwMjUvMTEvMjggODozMSwgWmhvdSwgWXVuIOWGmemBkzoKPiBIaSBMaW5n
ZmVuZywKPgo+Cj4KPiBPbiAxMS8yNC8yNSAxOTo0MiwgTGkgTGluZ2Zlbmcgd3JvdGU6Cj4+IENB
VVRJT046IFRoaXMgZW1haWwgY29tZXMgZnJvbSBhIG5vbiBXaW5kIFJpdmVyIGVtYWlsIGFjY291
bnQhCj4+IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Ug
cmVjb2duaXplIHRoZSAKPj4gc2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUuCj4+
Cj4+IEhpIFl1biwKPj4KPj4gUmVjZW50bHksIHdlIHRyaWdnZXJlZCBhIFVCU0FOIHdhcm5pbmcg
dGhyb3VnaCBzeXprYWxsZXI6Cj4+IFvCoCAxMjYuOTIyNDc0XVvCoCBUNzY5XSBVQlNBTjogc2hp
ZnQtb3V0LW9mLWJvdW5kcyBpbgo+PiBmcy9qZnMvamZzX2RtYXAuYzoyNjQ2OjExCj4+IFvCoCAx
MjYuOTIzNTA1XVvCoCBUNzY5XSBzaGlmdCBleHBvbmVudCAxMTAgaXMgdG9vIGxhcmdlIGZvciAz
Mi1iaXQgCj4+IHR5cGUgJ2ludCcKPj4gW8KgIDEyNi45MjQ1NDNdW8KgIFQ3NjldIENQVTogMTQg
VUlEOiAwIFBJRDogNzY5IENvbW06IHJlcHJvIE5vdCB0YWludGVkCj4+IDYuMTguMC1yYzYrICMx
MjcgUFJFRU1QVChub25lKQo+PiBbwqAgMTI2LjkyNDU0OV1bwqAgVDc2OV0gSGFyZHdhcmUgbmFt
ZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwKPj4gMTk5NiksIEJJT1MgMS4xNi4z
LTIuZmM0MCAwNC8wMS8yMDE0Cj4+IFvCoCAxMjYuOTI0NTUyXVvCoCBUNzY5XSBDYWxsIFRyYWNl
Ogo+PiBbwqAgMTI2LjkyNDU1NV1bwqAgVDc2OV3CoCA8VEFTSz4KPj4gW8KgIDEyNi45MjQ1NTdd
W8KgIFQ3NjldwqAgZHVtcF9zdGFja19sdmwrMHg0Yi8weDcwCj4+IFvCoCAxMjYuOTI0NTcyXVvC
oCBUNzY5XcKgIHVic2FuX2VwaWxvZ3VlKzB4NS8weDJiCj4+IFvCoCAxMjYuOTI0NTgzXVvCoCBU
NzY5XSBfX3Vic2FuX2hhbmRsZV9zaGlmdF9vdXRfb2ZfYm91bmRzLmNvbGQrMHg2MS8weGU2Cj4+
IFvCoCAxMjYuOTI0NTg4XVvCoCBUNzY5XcKgID8gZG9fcmVhZF9jYWNoZV9mb2xpbysweDljLzB4
MzMwCj4+IFvCoCAxMjYuOTI0NTk4XVvCoCBUNzY5XcKgIGRiU3BsaXQrMHgxNTMvMHgxOTAKPj4g
W8KgIDEyNi45MjQ2MDddW8KgIFQ3NjldwqAgZGJBZGpDdGwrMHg0MTMvMHg2YjEKPj4gW8KgIDEy
Ni45MjQ2MTNdW8KgIFQ3NjldwqAgZGJBbGxvY0RtYXArMHhiYy8weGU0Cj4+IFvCoCAxMjYuOTI0
NjE4XVvCoCBUNzY5XcKgIGRiQWxsb2MrMHg1ZGYvMHg4MDMKPj4gW8KgIDEyNi45MjQ2MjRdW8Kg
IFQ3NjldwqAgZWFfd3JpdGUrMHgyNmYvMHg2MjgKPj4gW8KgIDEyNi45MjQ2MjldW8KgIFQ3Njld
wqAgPyBlYV9nZXQrMHg2MzkvMHgxMjYwCj4+IFvCoCAxMjYuOTI0NjM0XVvCoCBUNzY5XcKgID8g
X19wZnhfZWFfd3JpdGUrMHgxMC8weDEwCj4+IFvCoCAxMjYuOTI0NjM3XVvCoCBUNzY5XcKgID8g
X19wZnhfX3ByaW50aysweDEwLzB4MTAKPj4gW8KgIDEyNi45MjQ2NDVdW8KgIFQ3NjldwqAgPyBf
X3BmeF9lYV9nZXQrMHgxMC8weDEwCj4+IFvCoCAxMjYuOTI0NjQ5XVvCoCBUNzY5XcKgIGVhX3B1
dCsweDFiNS8weDU2Nwo+PiBbwqAgMTI2LjkyNDY1M11bwqAgVDc2OV3CoCBfX2pmc19zZXR4YXR0
ci5jb2xkKzB4NGU4LzB4NjMyCj4+IFvCoCAxMjYuOTI0NjU4XVvCoCBUNzY5XcKgID8gX19wZnhf
X19qZnNfc2V0eGF0dHIrMHgxMC8weDEwCj4+IFvCoCAxMjYuOTI0NjYxXVvCoCBUNzY5XcKgID8g
X19wZnhfX3ByaW50aysweDEwLzB4MTAKPj4gW8KgIDEyNi45MjQ2NjVdW8KgIFQ3NjldwqAgPyBt
dXRleF9sb2NrKzB4ODYvMHhlMAo+PiBbwqAgMTI2LjkyNDY3NV1bwqAgVDc2OV3CoCA/IF9fcGZ4
X211dGV4X2xvY2srMHgxMC8weDEwCj4+IFvCoCAxMjYuOTI0NjgxXVvCoCBUNzY5XcKgIF9famZz
X3hhdHRyX3NldCsweGU0LzB4MTQ5Cj4+IFvCoCAxMjYuOTI0Njg1XVvCoCBUNzY5XcKgID8gX19w
ZnhfX19qZnNfeGF0dHJfc2V0KzB4MTAvMHgxMAo+PiBbwqAgMTI2LjkyNDY4OV1bwqAgVDc2OV3C
oCA/IHhhdHRyX2Z1bGxfbmFtZSsweDNhLzB4ODAKPj4gW8KgIDEyNi45MjQ2OTNdW8KgIFQ3Njld
wqAgX192ZnNfc2V0eGF0dHIrMHgxMTgvMHgxNTAKPj4gW8KgIDEyNi45MjQ2OTldW8KgIFQ3Njld
wqAgPyBfX3BmeF9fX3Zmc19zZXR4YXR0cisweDEwLzB4MTAKPj4gW8KgIDEyNi45MjQ3MDNdW8Kg
IFQ3NjldwqAgPyBzZWN1cml0eV9pbm9kZV9zZXR4YXR0cisweDFhMi8weDJhMAo+PiBbwqAgMTI2
LjkyNDcxMV1bwqAgVDc2OV3CoCBfX3Zmc19zZXR4YXR0cl9ub3Blcm0uY29sZCsweDFmLzB4NTkK
Pj4gW8KgIDEyNi45MjQ3MTZdW8KgIFQ3NjldwqAgdmZzX3NldHhhdHRyKzB4MTFiLzB4MzAwCj4+
IFvCoCAxMjYuOTI0NzIwXVvCoCBUNzY5XcKgID8gX19wZnhfdmZzX3NldHhhdHRyKzB4MTAvMHgx
MAo+PiBbwqAgMTI2LjkyNDcyNF1bwqAgVDc2OV3CoCA/IGNoZWNrX2hlYXBfb2JqZWN0KzB4NmYv
MHg0MzAKPj4gW8KgIDEyNi45MjQ3MzFdW8KgIFQ3NjldwqAgPyBkb19zZXR4YXR0cisweGE3LzB4
MTUwCj4+IFvCoCAxMjYuOTI0NzM0XVvCoCBUNzY5XcKgIGZpbGVuYW1lX3NldHhhdHRyKzB4MTI0
LzB4MTYwCj4+IFvCoCAxMjYuOTI0NzM4XVvCoCBUNzY5XcKgID8gX19wZnhfZmlsZW5hbWVfc2V0
eGF0dHIrMHgxMC8weDEwCj4+IFvCoCAxMjYuOTI0NzQyXVvCoCBUNzY5XcKgID8gZ2V0bmFtZV9m
bGFncy5wYXJ0LjArMHhmOC8weDQ4MAo+PiBbwqAgMTI2LjkyNDc0OV1bwqAgVDc2OV3CoCBwYXRo
X3NldHhhdHRyYXQrMHgyMTUvMHgyOTAKPj4gW8KgIDEyNi45MjQ3NTNdW8KgIFQ3NjldwqAgPyBf
X3BmeF9wYXRoX3NldHhhdHRyYXQrMHgxMC8weDEwCj4+IFvCoCAxMjYuOTI0NzU3XVvCoCBUNzY5
XcKgID8gX19jYWxsX3JjdV9jb21tb24uY29uc3Rwcm9wLjArMHgzNDEvMHg5NzAKPj4gW8KgIDEy
Ni45MjQ3NjddW8KgIFQ3NjldwqAgPyBfX3BmeF9fX2NhbGxfcmN1X2NvbW1vbi5jb25zdHByb3Au
MCsweDEwLzB4MTAKPj4gW8KgIDEyNi45MjQ3NzJdW8KgIFQ3NjldwqAgPyBrbWVtX2NhY2hlX2Zy
ZWUrMHgzZGQvMHg1ZDAKPj4gW8KgIDEyNi45MjQ3NzhdW8KgIFQ3NjldwqAgPyBrbWVtX2NhY2hl
X2ZyZWUrMHg0MGIvMHg1ZDAKPj4gW8KgIDEyNi45MjQ3ODFdW8KgIFQ3NjldwqAgPyBmcHV0X2Ns
b3NlX3N5bmMrMHhkYy8weDE5MAo+PiBbwqAgMTI2LjkyNDc4OV1bwqAgVDc2OV3CoCA/IGZwdXRf
Y2xvc2Vfc3luYysweGRjLzB4MTkwCj4+IFvCoCAxMjYuOTI0NzkyXVvCoCBUNzY5XcKgID8gX19w
ZnhfZnB1dF9jbG9zZV9zeW5jKzB4MTAvMHgxMAo+PiBbwqAgMTI2LjkyNDc5Nl1bwqAgVDc2OV3C
oCA/IGZpbGVfY2xvc2VfZmRfbG9ja2VkKzB4MTc4LzB4MmEwCj4+IFvCoCAxMjYuOTI0ODAzXVvC
oCBUNzY5XcKgIF9feDY0X3N5c19sc2V0eGF0dHIrMHhjOS8weDE0MAo+PiBbwqAgMTI2LjkyNDgw
N11bwqAgVDc2OV3CoCBkb19zeXNjYWxsXzY0KzB4NjEvMHg5ZDAKPj4gW8KgIDEyNi45MjQ4MTRd
W8KgIFQ3NjldwqAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NzYvMHg3ZQo+PiBb
wqAgMTI2LjkyNDgxOF1bwqAgVDc2OV0gUklQOiAwMDMzOjB4NDRjODRkCj4+IFvCoCAxMjYuOTI0
ODIzXVvCoCBUNzY5XSBDb2RlOiA2NiAyZSAwZiAxZiA4NCAwMCAwMCAwMCAwMCAwMCAwZiAxZiAw
MCBmMwo+PiAwZiAxZSBmYSA0OCA4OSBmOCA0OCA4OSBmNyA0OCA4OSBkNiA0OCA4OSBjYSA0ZCA4
OSBjMiA0ZCA4OSBjOCA0YyA4YiA0Ywo+PiAyNCAwOCAwZiAwNSA8NDg+IDNkIDAxIGYwIGZmIGZm
IDczOAo+PiBbwqAgMTI2LjkyNDgyN11bwqAgVDc2OV0gUlNQOiAwMDJiOjAwMDA3ZmZjYmY4OTIw
ODggRUZMQUdTOiAwMDAwMDI4Nwo+PiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDBiZAo+PiBbwqAg
MTI2LjkyNDgzM11bwqAgVDc2OV0gUkFYOiBmZmZmZmZmZmZmZmZmZmRhIFJCWDogMDAwMDdmZmNi
Zjg5MjI3OCBSQ1g6Cj4+IDAwMDAwMDAwMDA0NGM4NGQKPj4gW8KgIDEyNi45MjQ4MzVdW8KgIFQ3
NjldIFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAyMDAwMDAwMDAyMDAgUkRJOgo+PiAw
MDAwMjAwMDAwMDAwMDQwCj4+IFvCoCAxMjYuOTI0ODM4XVvCoCBUNzY5XSBSQlA6IDAwMDA3ZmZj
YmY4OTIwOTAgUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIwOToKPj4gMDAwMDAwMDAwMDAwMDAwMQo+
PiBbwqAgMTI2LjkyNDg0MF1bwqAgVDc2OV0gUjEwOiAwMDAwMDAwMDAwMDAwMDAwIFIxMTogMDAw
MDAwMDAwMDAwMDI4NyBSMTI6Cj4+IDAwMDAwMDAwMDAwMDAwMDEKPj4gW8KgIDEyNi45MjQ4NDJd
W8KgIFQ3NjldIFIxMzogMDAwMDdmZmNiZjg5MjI2OCBSMTQ6IDAwMDAwMDAwMDA0YzM4ZDAgUjE1
Ogo+PiAwMDAwMDAwMDAwMDAwMDAxCj4+IFvCoCAxMjYuOTI0ODQ4XVvCoCBUNzY5XcKgIDwvVEFT
Sz4KPj4gW8KgIDEyNi45MjQ4NTBdW8KgIFQ3NjldIC0tLVsgZW5kIHRyYWNlIF0tLS0KPj4KPj4g
VGhlIHdhcm5pbmcgb2NjdXJyZWQgYmVjYXVzZSBzeXprYWxsZXIgY29uc3RydWN0ZWQgYSBtYWxm
b3JtZWQgaW1hZ2UsIAo+PiBhbmQKPj4gSkZTIHJlYWQgYW4gaW52YWxpZCBsZWFmIHZhbHVlIGZy
b20gaXQuCj4+Cj4+IEluIG91ciB0ZXN0aW5nLCB0aGlzIHBhdGNoIHJlc29sdmVzIHRoZSBpc3N1
ZSBieSBwcmV2ZW50aW5nIHRoZSB1c2UgCj4+IG9mIHRoZQo+PiBpbnZhbGlkIHZhbHVlOgo+PiBb
wqDCoCAzOS44OTA3ODldW8KgIFQ3NjVdIGRtYXBjdGw6IGxlYWYgdmFsdWUgMTI0IHRvbyBsYXJn
ZSBhdCBpbmRleCAzNDEKPj4gW8KgwqAgMzkuODkxNjg0XVvCoCBUNzY1XSBFUlJPUjogKGRldmlj
ZSBsb29wMCk6IGRiQWRqQ3RsOiBDb3JydXB0IAo+PiBkbWFwY3RsIHBhZ2UKPj4gW8KgwqAgMzku
ODkxNjg0XVvCoCBUNzY1XQo+PiBbwqDCoCAzOS44OTMzNDNdW8KgIFQ3NjVdIEVSUk9SOiAoZGV2
aWNlIGxvb3AwKTogcmVtb3VudGluZyBmaWxlc3lzdGVtIGFzCj4+IHJlYWQtb25seQo+Pgo+PiBI
b3dldmVyLCBJIG5vdGljZWQgdGhhdCB0aGlzIHBhdGNoIHRyaWdnZXJzIHNvbWUgYnVpbGQgd2Fy
bmluZ3MuCj4+IENvdWxkIHlvdSBwbGVhc2UgaGVscCBhZGRyZXNzIHRoZXNlIHdhcm5pbmdzIGFu
ZCBwdXNoIHRoZSBmaXggdXBzdHJlYW0/IAo+IEkgd29uZGVyIHdoYXQgYnVpbGQgd2FybmluZ3Mg
eW91IGVuY291bnRlcmVkLCBzaW5jZSBJIGhhdmUgbm90IHNlZW4gaXQuCgpIZXJlIGlzIHRoZSBi
dWlsZCB3YXJuaW5nIG5vdGljZWQgYnkga2VybmVsIHRlc3Qgcm9ib3Q6Cmh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC8yMDI1MTEyMTE3NTAuYmpjdzNVY2QtbGtwQGludGVsLmNvbS8KClRoZXNl
IGJ1aWxkIHdhcm5pbmdzIGFwcGVhciB0byBiZSBjYXVzZWQgYnkgY29tcGFyaXNvbnMgYmV0d2Vl
biB1bnNpZ25lZAp2YWx1ZXMgYW5kIHplcm8uIEknbSBub3QgZmFtaWxpYXIgd2l0aCBKRlMsIHNv
IEknbSBub3Qgc3VyZSB3aGV0aGVyIHRoaXMKbG9naWMgaXMgbmVjZXNzYXJ5IG9yIGlmIHRoZXJl
IGlzIGFuIGFsdGVybmF0aXZlIHdheSB0byBoYW5kbGUgdGhlIGNoZWNrcy4KQ291bGQgeW91IHRh
a2UgYSBsb29rPwoKVGhhbmtzLApMaW5nZmVuZy4KCj4KPiBUaGFua3MsCj4gWXVuCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
