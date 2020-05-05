Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9721C5775
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 15:52:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVxzY-0003nG-3V; Tue, 05 May 2020 13:52:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@163.com>) id 1jVxgO-0003Jp-HL
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 13:32:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vtE9LBKKqPY2QgOdCyMuZW9mjYDyjGtNVqWc4Ka9luo=; b=LcIU4qneY89pSQdYlpK8A5LolF
 ULY7kZpdYJ1ZB1hCRa/c07+E5+JWttXhoLZNJRNF7hDzbU4Xrmso8jCi4+xRrOUkQw9GfQuvAYnMW
 5rj4MhRYDbFUJd15MAx+h5Xozmp9Pbv/nRUROTOr13cuUwBID1ecHMficMv3Uz6p+dOk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vtE9LBKKqPY2QgOdCyMuZW9mjYDyjGtNVqWc4Ka9luo=; b=c3w3Tcazd+elw8d6wFoxqy8Y90
 LG3BbTguxCwWGeAETl8rK82A+yePUoklEl5UOlS0C4sW3woq0lN2IIec9ENs6T0DHA4560Imi+RAo
 x308aFR5VXCDSwuooMboEeQtvR0ArtvHQA1RbdPGuge+k0uZ3yztfq1S5BXQGUnzPAOo=;
Received: from m12-17.163.com ([220.181.12.17])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:DHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1jVxgK-00EKPI-2J
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 13:32:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Subject:From:Message-ID:Date:MIME-Version; bh=vtE9L
 BKKqPY2QgOdCyMuZW9mjYDyjGtNVqWc4Ka9luo=; b=bpuZ7YTYNZo8qjLCX6F9U
 ay8iGfhemsjWMvllBx3GKhJ2anA8/6VNjQXiQqR11jgKHjYSFM0cd3YiXkgkIwSS
 BOsWXdIVUF8umu3yxdlGCG4kJFMgFqbc8uK+/7XmSmdNqdLvpKojArPHjk2jz/Q5
 1tIjBv3mehZ4LaEbnKmgbY=
Received: from [192.168.1.7] (unknown [120.244.110.63])
 by smtp13 (Coremail) with SMTP id EcCowAB37v3carFejW99BA--.112S2;
 Tue, 05 May 2020 21:32:12 +0800 (CST)
To: Dave Kleikamp <dave.kleikamp@oracle.com>,
 Markus Elfring <Markus.Elfring@web.de>, Jia-Ju Bai <baijiaju1990@gmail.com>,
 jfs-discussion@lists.sourceforge.net
References: <5ef374a5-0e2e-5c74-a827-0148c384f6e3@web.de>
 <abbb03ec-7ce3-08b6-7d08-420743067f19@gmail.com>
 <fa6fabec-8cc5-fc62-657f-3794e9405fac@web.de>
 <df165b9f-7a51-a632-b1a0-a2cf1efa1915@oracle.com>
From: Jia-Ju Bai <baijiaju1990@163.com>
Message-ID: <565e317a-396e-9221-11bb-bc8c76cc9f7a@163.com>
Date: Tue, 5 May 2020 21:32:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <df165b9f-7a51-a632-b1a0-a2cf1efa1915@oracle.com>
Content-Language: en-US
X-CM-TRANSID: EcCowAB37v3carFejW99BA--.112S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKrWkWFy8ZFyUuF1UKw45Jrb_yoWDCFc_uF
 s5CFyUGwn8uF1rXFZ7Jw4fZry3Zw47ZF1Yywn5JrW7J3s3tFs5CFZ7KFyYy3W5tF9akrsr
 Ca1Sqw4Dt3W2qjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU5M5l5UUUUU==
X-Originating-IP: [120.244.110.63]
X-CM-SenderInfo: xedlyx5dmximizq6il2tof0z/1tbiVhwbelqzk2jEvAAAsB
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]163.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]163.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jVxgK-00EKPI-2J
X-Mailman-Approved-At: Tue, 05 May 2020 13:52:11 +0000
Subject: Re: [Jfs-discussion] fs: jfs: fix a possible data race in txBegin()
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

CgpPbiAyMDIwLzUvNSAyMToyMywgRGF2ZSBLbGVpa2FtcCB3cm90ZToKPiBPbiA1LzUvMjAgMTI6
MTIgQU0sIE1hcmt1cyBFbGZyaW5nIHdyb3RlOgo+Pj4gSSBhbSBub3Qgc3VyZSBob3cgdG8gYWRk
IHRoZSB0YWcgIkZpeGVzIi4uLgo+PiBIb3cgaGVscGZ1bCBkbyB5b3UgZmluZCB0aGUgYXZhaWxh
YmxlIHNvZnR3YXJlIGRvY3VtZW50YXRpb24/Cj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRp
b24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0P2lkPTQ3Y2YxYjQyMmU2MDkzYWVlMmEz
ZTU1ZDVlMTYyMTEyYTJjNjk4NzAjbjE4Mwo+Pgo+Pgo+Pj4gSSBuZWVkIHRvIGZpbmQgd2hpY2gg
cHJldmlvdXMgY29tbWl0IGFkZCB0aGUgY29kZSBhYm91dCB0eEJlZ2luKCk/Cj4+IEkgc3VnZ2Vz
dCB0byB0YWtlIGFub3RoZXIgbG9vayBhdCBjb3JyZXNwb25kaW5nIHNvdXJjZSBjb2RlIHBsYWNl
cwo+PiBieSBhIGNvbW1hbmQgbGlrZSDigJxnaXQgYmxhbWXigJ0uCj4+IGh0dHBzOi8vZ2l0LXNj
bS5jb20vYm9vay9lbi92Mi9HaXQtVG9vbHMtRGVidWdnaW5nLXdpdGgtR2l0cwo+IEkgc3VzcGVj
dCB0aGF0IHRoZSBwcm9ibGVtIHdhcyBpbiB0aGUgY29kZSBtdWNoIGxvbmdlciB0aGFuIGl0IGhh
cyBiZWVuCj4gdW5kZXIgZ2l0IHNvdXJjZSBjb250cm9sLgoKSSBhZ3JlZSwgYmVjYXVzZSAiZ2l0
IGJsYW1lIiBzaG93cyB0aGUgbGFzdCBjaGFuZ2UgdG8gdHhCZWdpbigpIGlzIApjb21taXQgMWRh
MTc3ZTRjM2Y0LCB3aGljaCB3YXMgc3VibWl0dGVkIGluIDIwMDUuLi4KQW5kIHRoaXMgY29tbWl0
IGp1c3QgYWRkZWQgb3IgbWVyZ2VkIHRoZSBmaWxlc3lzdGVtIHRvIHRoZSBMaW51eCBrZXJuZWwu
ClRodXMsIGFkZGluZyB0aGUgdGFnICJGaXhlcyIgb2YgdGhpcyBjb21taXQgc2hvdWxkIGJlIHVz
ZWxlc3MuLi4KCgpCZXN0IHdpc2hlcywKSmlhLUp1IEJhaQoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QK
SmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
