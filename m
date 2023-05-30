Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB445716F01
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 22:41:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q469f-0006BX-K4;
	Tue, 30 May 2023 20:41:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1q469d-0006BQ-QT
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 20:41:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f0FfbwKrs0SBrp2l9jpO6xZkWlpiXTIvCrrrNrQOtjU=; b=lFc40zcv9u3i9QLdYG02AUGhaI
 p6K2yvsPm6B9c5iDlX0+HV9i8k/D9b+Zq1/10IvYRsE279+JKHBCoYhlsKEn3hkdaXjGVeFi88OQ1
 Y44hcQPNUyCdsBLwVzp0IlidSPpkoXsyq5ji3h78aLSTOHFbUq2AzgfyIsf+GvZTkgss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f0FfbwKrs0SBrp2l9jpO6xZkWlpiXTIvCrrrNrQOtjU=; b=fHNrG7bp8XZJwrOqTuvybvGg6N
 LPPMMbMYnn/+9ZCteC4qELUg/oFX8TUcH4nQ4wqKxXtBGu6HV/gokNrQVH1wpJMwI2OS+knXF5fbI
 nq4XP3NbosF/pw3u0tSDUp12EwMF3T1KGujRnhcXLYYAamHcLFVXVD9TTlEaTUCJGp3U=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q469c-0003pK-F4 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 20:41:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A434F63373
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 30 May 2023 20:41:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FEDAC433A1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 30 May 2023 20:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1685479269;
 bh=NZg4xbNptwq5J83x4/9FfgWYp2tn6LBMqAKgwyJG6tQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=huQNFFH3zVrLLnm5WPfMAbkQPvxCmvDcAuR9nNKd/g6ZoLU+oubgPMfhcvejhwbMy
 bRuBct3r6wHKkzYqhqEvGFfCpZYRAuAiT3wzv9jYwpqlslolPQpVoC6l4bkxTW5cgq
 aHvAkKgwybK+QQl1B0Jilwhzk8yfsI7fuifW9XQTkoKFITI0dXVq6KXEBzrUICZPze
 PyVOTDar79WsVhr08Ikvo3yCjwDdtgjfVU2jkcBlq4rrXYZPDH8DmVzyUBEoHLrosB
 Mkru2m9rHaX4pyzYCzA4oMl+/2mViC42oBWSv4cVmV6MbUN1IWMmZVyQlgMZsMsif+
 TJLaW7xm4WLyg==
Received: by mail-lj1-f179.google.com with SMTP id
 38308e7fff4ca-2af1c884b08so2924341fa.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 30 May 2023 13:41:09 -0700 (PDT)
X-Gm-Message-State: AC+VfDyqxgBlLs5pfI6LKBA/3u+uoya6dAvldcxfRKQ63kkgfXs2OEp/
 8DdLJEVFpHUhgvK4Sbl4WfOvoRYSp9TXbKL8ZlY=
X-Google-Smtp-Source: ACHHUZ7vuf2vQNikh852gIOeYbs1mAspWrnHLpuRQ0WVk/9d/YVdWPAiSzLnXbcDRj80He113UbugMRuu4yM7AjsQxc=
X-Received: by 2002:a2e:a222:0:b0:2af:18a9:782f with SMTP id
 i2-20020a2ea222000000b002af18a9782fmr4570675ljm.0.1685479267531; Tue, 30 May
 2023 13:41:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
 <d7cfd04d410accee4148d8c0e51230bcb8b4bb8f.1685461490.git.johannes.thumshirn@wdc.com>
In-Reply-To: <d7cfd04d410accee4148d8c0e51230bcb8b4bb8f.1685461490.git.johannes.thumshirn@wdc.com>
From: Song Liu <song@kernel.org>
Date: Tue, 30 May 2023 13:40:55 -0700
X-Gmail-Original-Message-ID: <CAPhsuW6hZWx3Jx0UOc20mf06c5QS5vfDKF_nauzm0mLkr3Xhsw@mail.gmail.com>
Message-ID: <CAPhsuW6hZWx3Jx0UOc20mf06c5QS5vfDKF_nauzm0mLkr3Xhsw@mail.gmail.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, May 30, 2023 at 8:50 AM Johannes Thumshirn <johannes.thumshirn@wdc.com>
    wrote: > > alloc_behind_master_bio() can possibly add multiple pages to a
    bio, but it > is not checking for the return [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q469c-0003pK-F4
Subject: Re: [Jfs-discussion] [PATCH v6 13/20] md: check for failure when
 adding pages in alloc_behind_master_bio
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, gouhao@uniontech.com,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVHVlLCBNYXkgMzAsIDIwMjMgYXQgODo1MOKAr0FNIEpvaGFubmVzIFRodW1zaGlybgo8am9o
YW5uZXMudGh1bXNoaXJuQHdkYy5jb20+IHdyb3RlOgo+Cj4gYWxsb2NfYmVoaW5kX21hc3Rlcl9i
aW8oKSBjYW4gcG9zc2libHkgYWRkIG11bHRpcGxlIHBhZ2VzIHRvIGEgYmlvLCBidXQgaXQKPiBp
cyBub3QgY2hlY2tpbmcgZm9yIHRoZSByZXR1cm4gdmFsdWUgb2YgYmlvX2FkZF9wYWdlKCkgaWYg
YWRkaW5nIHJlYWxseQo+IHN1Y2NlZWRlZC4KPgo+IENoZWNrIGlmIHRoZSBwYWdlIGFkZGluZyBz
dWNjZWVkZWQgYW5kIGlmIG5vdCBiYWlsIG91dC4KPgo+IFJldmlld2VkLWJ5OiBEYW1pZW4gTGUg
TW9hbCA8ZGFtaWVuLmxlbW9hbEBvcGVuc291cmNlLndkYy5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
Sm9oYW5uZXMgVGh1bXNoaXJuIDxqb2hhbm5lcy50aHVtc2hpcm5Ad2RjLmNvbT4KCkFja2VkLWJ5
OiBTb25nIExpdSA8c29uZ0BrZXJuZWwub3JnPgoKPiAtLS0KPiAgZHJpdmVycy9tZC9yYWlkMS5j
IHwgNSArKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZC9yYWlkMS5jIGIvZHJpdmVycy9tZC9yYWlk
MS5jCj4gaW5kZXggNjhhOWUyZDk5ODViLi44MjgzZWYxNzdmNmMgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9tZC9yYWlkMS5jCj4gKysrIGIvZHJpdmVycy9tZC9yYWlkMS5jCj4gQEAgLTExNDcsNyAr
MTE0NywxMCBAQCBzdGF0aWMgdm9pZCBhbGxvY19iZWhpbmRfbWFzdGVyX2JpbyhzdHJ1Y3QgcjFi
aW8gKnIxX2JpbywKPiAgICAgICAgICAgICAgICAgaWYgKHVubGlrZWx5KCFwYWdlKSkKPiAgICAg
ICAgICAgICAgICAgICAgICAgICBnb3RvIGZyZWVfcGFnZXM7Cj4KPiAtICAgICAgICAgICAgICAg
YmlvX2FkZF9wYWdlKGJlaGluZF9iaW8sIHBhZ2UsIGxlbiwgMCk7Cj4gKyAgICAgICAgICAgICAg
IGlmICghYmlvX2FkZF9wYWdlKGJlaGluZF9iaW8sIHBhZ2UsIGxlbiwgMCkpIHsKPiArICAgICAg
ICAgICAgICAgICAgICAgICBmcmVlX3BhZ2UocGFnZSk7Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgZ290byBmcmVlX3BhZ2VzOwo+ICsgICAgICAgICAgICAgICB9Cj4KPiAgICAgICAgICAgICAg
ICAgc2l6ZSAtPSBsZW47Cj4gICAgICAgICAgICAgICAgIGkrKzsKPiAtLQo+IDIuNDAuMQo+CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lv
bgo=
