Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F666D26F3
	for <lists+jfs-discussion@lfdr.de>; Fri, 31 Mar 2023 19:48:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1piIrN-0000jm-JX;
	Fri, 31 Mar 2023 17:48:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1piIrM-0000jf-EW
 for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 17:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=74+LZlMHcYsg/Kzq6hhnAAWL6JxtgVVZqUzMUNQ+9TU=; b=eEI66km2q4LnIduLX3I8a7XhKu
 SSobGhI0hOgEQN267/xnCXiICD6xxAU0+HKXo+odGIcn+7fJ2GDFtRUMWz5z+dmQdrjwZuURHmn5f
 D/aMlsSVcT6x9++lBwpamW/IHhG18TXTAd+zHVQ0MOnOA2eqxrLwhq5QAFP9DhOpFAEQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=74+LZlMHcYsg/Kzq6hhnAAWL6JxtgVVZqUzMUNQ+9TU=; b=U7pYKA+wio3O6jkj+ZNvVl/hEK
 J1lhranG7cgJXsBGp36MHPlNh0UB79pU8dGKUaUdbxLuxO/0Uqvt7zjF45hGN+749eEO+bBI3EFy+
 u1HwKMBgM2kzOxgcKhU12SR+o8BmWUANu0pUO3dVK8JgvvT8k2vjPEDXK72B9X9u3W2c=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piIrI-0000cH-IT for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 17:48:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 50FDDB83134
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 17:48:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18751C4339E
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 17:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680284889;
 bh=74+LZlMHcYsg/Kzq6hhnAAWL6JxtgVVZqUzMUNQ+9TU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UNa2dSd/YJ3OWEt3ocKdwXDSECZsjwAF+sgSOAj6rFRP2uU2VTSgrqv+37/KyZX0R
 Oa1rtE+HdXQ57EsXLRKHed0PUtcB3r+HUl/slAbr9KmCT64nkPp9C+L1muC7g3AYko
 x0HBD6mpFklhLAfXpr0SD/mHaJE60Egn1Ycyil95DM5uvLwv9pThyu4kj7cYW1NKJF
 2wC/BMl/Rt3SgA7s4BBVRPvEoNk6D0IGSJ+LyklyB5bOM8Dyygz3S3NAt75B2Yz5Vj
 FQihqGTii7u0idc33UB7apbMcdVFciTSFoYsqCVC8+voSaZG1pMqDFFi0B8kda72KB
 7Vx6VY6n2wEGA==
Received: by mail-lf1-f42.google.com with SMTP id g17so29937189lfv.4
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 10:48:09 -0700 (PDT)
X-Gm-Message-State: AAQBX9fG5P5mckK3uu7RBPT7uFLx8rOPI+MVCEK65QJjCAYwl+lDrJF4
 Je47lfuKYcN33f5dXtytJ5pBS9nMqw/R+aVUPWk=
X-Google-Smtp-Source: AKy350aGmAaw8YhQDsMHFPqOZHOf0YFrm6+Qrmu1o39ibtrUhRAoJ2hJNrBTR72DBPR1w52lhQ7Kxsz8Es6oFrG/it4=
X-Received: by 2002:ac2:5d72:0:b0:4ea:e296:fead with SMTP id
 h18-20020ac25d72000000b004eae296feadmr8226352lft.3.1680284887179; Fri, 31 Mar
 2023 10:48:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
 <29a2488aa641319199c597d1dc1151c700e32430.1680172791.git.johannes.thumshirn@wdc.com>
In-Reply-To: <29a2488aa641319199c597d1dc1151c700e32430.1680172791.git.johannes.thumshirn@wdc.com>
From: Song Liu <song@kernel.org>
Date: Fri, 31 Mar 2023 10:47:55 -0700
X-Gmail-Original-Message-ID: <CAPhsuW7HoY_0fW12egZuirTX22LTQJvBw49MEaT5_sh4ty+xCw@mail.gmail.com>
Message-ID: <CAPhsuW7HoY_0fW12egZuirTX22LTQJvBw49MEaT5_sh4ty+xCw@mail.gmail.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 30, 2023 at 3:44 AM Johannes Thumshirn <johannes.thumshirn@wdc.com>
    wrote: > > The raid5-ppl submission code uses bio_add_page() to add a page
    to a > newly created bio. bio_add_page() ca [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piIrI-0000cH-IT
Subject: Re: [Jfs-discussion] [PATCH v2 07/19] md: raid5: use __bio_add_page
 to add single page to new bio
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
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBNYXIgMzAsIDIwMjMgYXQgMzo0NOKAr0FNIEpvaGFubmVzIFRodW1zaGlybgo8am9o
YW5uZXMudGh1bXNoaXJuQHdkYy5jb20+IHdyb3RlOgo+Cj4gVGhlIHJhaWQ1LXBwbCBzdWJtaXNz
aW9uIGNvZGUgdXNlcyBiaW9fYWRkX3BhZ2UoKSB0byBhZGQgYSBwYWdlIHRvIGEKPiBuZXdseSBj
cmVhdGVkIGJpby4gYmlvX2FkZF9wYWdlKCkgY2FuIGZhaWwsIGJ1dCB0aGUgcmV0dXJuIHZhbHVl
IGlzIG5ldmVyCj4gY2hlY2tlZC4gRm9yIGFkZGluZyBjb25zZWN1dGl2ZSBwYWdlcywgdGhlIHJl
dHVybiBpcyBhY3R1YWxseSBjaGVja2VkIGFuZAo+IGEgbmV3IGJpbyBpcyBhbGxvY2F0ZWQgaWYg
YWRkaW5nIHRoZSBwYWdlIGZhaWxzLgo+Cj4gVXNlIF9fYmlvX2FkZF9wYWdlKCkgYXMgYWRkaW5n
IGEgc2luZ2xlIHBhZ2UgdG8gYSBuZXdseSBjcmVhdGVkIGJpbyBpcwo+IGd1YXJhbnRlZWQgdG8g
c3VjY2VlZC4KPgo+IFRoaXMgYnJpbmdzIHVzIGEgc3RlcCBjbG9zZXIgdG8gbWFya2luZyBiaW9f
YWRkX3BhZ2UoKSBhcyBfX211c3RfY2hlY2suCj4KPiBTaWduZWQtb2ZmLWJ5OiBKb2hhbm5lcyBU
aHVtc2hpcm4gPGpvaGFubmVzLnRodW1zaGlybkB3ZGMuY29tPgo+IFJldmlld2VkLWJ5OiBEYW1p
ZW4gTGUgTW9hbCA8ZGFtaWVuLmxlbW9hbEBvcGVuc291cmNlLndkYy5jb20+CgpBY2tlZC1ieTog
U29uZyBMaXUgPHNvbmdAa2VybmVsLm9yZz4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1
c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
