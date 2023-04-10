Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 091CA6DC911
	for <lists+jfs-discussion@lfdr.de>; Mon, 10 Apr 2023 18:06:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1plu2H-0008Px-QE;
	Mon, 10 Apr 2023 16:06:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1plu2G-0008Ph-1h
 for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Apr 2023 16:06:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KNqYd+1QnmqRLV5Ajn8FT5thAplwqJoHO3FJBlZCT9M=; b=ebHLFV/kcf2BNQ08mGcgnKkpnE
 Fia81errMqpDzbe5OIstN3d0qmRnpjuWR7G6fjUxzt/odJ7XvDiw6+jwhoQ7/YAmPp40FgeDupqqI
 3altcVtjGw6EEHjvw11fCnuOh1aMRPopuBpbYGVz5D281Mad6M22ZN3hxPr07hUHpxwI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KNqYd+1QnmqRLV5Ajn8FT5thAplwqJoHO3FJBlZCT9M=; b=dZd5WZwLShg0M8YNJLUEuhJkvr
 /lpN0pRTFpJ2B2BUruOOltE56b+sfBWzMYQ/v4GfBtw5Rb69HSfZL8o9/kEZrr6ep0DWnQK3ka6Co
 UInpIEaBofjtMTmXoOOTiYq1qaSznqsoaT4EGPoGR+EtTn4RyOUTGdDFwYmKehTMwk4I=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1plu2E-0030Ti-JG for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Apr 2023 16:06:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 38D2861367
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 10 Apr 2023 16:06:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A36B2C4339E
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 10 Apr 2023 16:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1681142780;
 bh=mwSxhzCg15RXyTCgR9LDyFgq4h2rR53nA455oB13C/U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uy9ZpuY0vy2vryhepr3pFQGMr8grlBUWulmlwmxtAdUIeGqBZT78A1zNPM7ZM7Pbg
 80BlDSor2Q+NUbN+Em6MmVaioJUZUyf2LJAD9cZ+T2g6nhq70CYWjg4DeSKfM2PJin
 /yuIKz9GE3XW7WgHPpfoCGqc87it9FAk84og7eiHrYZR0nUcmeXUdYrcGpIz4A+5ID
 7cVAEXwb0z7wdLObf180ptGHtrhmTtMJOYLSOjva3fYYT5jQZM0vZYSGo8dQq2ovp5
 4G0gsxRWgyHIREk2+mwCWjD0hmYsYFutawlh5pd7JCr/rKeTfdXyrsI34BbeUW0wkr
 wbbmJTsRjleyA==
Received: by mail-lj1-f171.google.com with SMTP id a3so133105ljr.11
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 10 Apr 2023 09:06:20 -0700 (PDT)
X-Gm-Message-State: AAQBX9dxkaeToE4L/Br7z+PDCrbWUZV6S1GjUSoRU9sHcTrB0qmulZEQ
 oa1b2FQT4kyH3JqYaTVYKs1JvZi564/7+LjrKI4=
X-Google-Smtp-Source: AKy350ZYTf5+tNtIInJ56xYELpkw807n6pcDQqxLzwYNn5kC/wsk/lyy0ZRj6GpVdiG1eSqStA2SCDFU3pUWbh96/vU=
X-Received: by 2002:a2e:b0e2:0:b0:2a5:fe8f:b314 with SMTP id
 h2-20020a2eb0e2000000b002a5fe8fb314mr2152243ljl.5.1681142778696; Mon, 10 Apr
 2023 09:06:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
 <8b8a3bb2db8c5183ef36c1810f2ac776ac526327.1680172791.git.johannes.thumshirn@wdc.com>
 <CAPhsuW7a+mpn+VprfA2mC5Fc+M9BFq8i6d-y+-o5G1u5dOsk2Q@mail.gmail.com>
 <bbc98aa3-24f0-8ee6-9d74-483564a14f0f@kernel.org>
In-Reply-To: <bbc98aa3-24f0-8ee6-9d74-483564a14f0f@kernel.org>
From: Song Liu <song@kernel.org>
Date: Mon, 10 Apr 2023 09:06:06 -0700
X-Gmail-Original-Message-ID: <CAPhsuW4yQjNgHZpw4UzkhC+GkY+aAFSjC-PDQFFoL-Wg-u2r1Q@mail.gmail.com>
Message-ID: <CAPhsuW4yQjNgHZpw4UzkhC+GkY+aAFSjC-PDQFFoL-Wg-u2r1Q@mail.gmail.com>
To: Johannes Thumshirn <jth@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Apr 4, 2023 at 1:26 AM Johannes Thumshirn <jth@kernel.org>
    wrote: > > On 31/03/2023 20:13, Song Liu wrote: > > On Thu, Mar 30, 2023
   at 3:44 AM Johannes Thumshirn > > <johannes.thumshirn@wd [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1plu2E-0030Ti-JG
Subject: Re: [Jfs-discussion] [PATCH v2 17/19] md: raid1: check if adding
 pages to resync bio fails
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-mm@kvack.org, dm-devel@redhat.com, Christoph Hellwig <hch@lst.de>,
 Andreas Gruenbacher <agruenba@redhat.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Matthew Wilcox <willy@infradead.org>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Mike Snitzer <snitzer@kernel.org>,
 Ming Lei <ming.lei@redhat.com>, linux-raid@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, Hannes Reinecke <hare@suse.de>,
 David Sterba <dsterba@suse.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVHVlLCBBcHIgNCwgMjAyMyBhdCAxOjI24oCvQU0gSm9oYW5uZXMgVGh1bXNoaXJuIDxqdGhA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAzMS8wMy8yMDIzIDIwOjEzLCBTb25nIExpdSB3cm90
ZToKPiA+IE9uIFRodSwgTWFyIDMwLCAyMDIzIGF0IDM6NDTigK9BTSBKb2hhbm5lcyBUaHVtc2hp
cm4KPiA+IDxqb2hhbm5lcy50aHVtc2hpcm5Ad2RjLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBDaGVj
ayBpZiBhZGRpbmcgcGFnZXMgdG8gcmVzeW5jIGJpbyBmYWlscyBhbmQgaWYgYmFpbCBvdXQuCj4g
Pj4KPiA+PiBBcyB0aGUgY29tbWVudCBhYm92ZSBzdWdnZXN0cyB0aGlzIGNhbm5vdCBoYXBwZW4s
IFdBUk4gaWYgaXQgYWN0dWFsbHkKPiA+PiBoYXBwZW5zLgo+ID4+Cj4gPj4gVGhpcyB3YXkgd2Ug
Y2FuIG1hcmsgYmlvX2FkZF9wYWdlcyBhcyBfX211c3RfY2hlY2suCj4gPj4KPiA+PiBTaWduZWQt
b2ZmLWJ5OiBKb2hhbm5lcyBUaHVtc2hpcm4gPGpvaGFubmVzLnRodW1zaGlybkB3ZGMuY29tPgo+
ID4+IFJldmlld2VkLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGFtaWVuLmxlbW9hbEBvcGVuc291cmNl
LndkYy5jb20+Cj4gPj4gLS0tCj4gPj4gICBkcml2ZXJzL21kL3JhaWQxLTEwLmMgfCAgNyArKysr
KystCj4gPj4gICBkcml2ZXJzL21kL3JhaWQxMC5jICAgfCAxMiArKysrKysrKysrLS0KPiA+PiAg
IDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+Pgo+
ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21kL3JhaWQxLTEwLmMgYi9kcml2ZXJzL21kL3JhaWQx
LTEwLmMKPiA+PiBpbmRleCBlNjFmNmNhZDRlMDguLmMyMWI2YzE2ODc1MSAxMDA2NDQKPiA+PiAt
LS0gYS9kcml2ZXJzL21kL3JhaWQxLTEwLmMKPiA+PiArKysgYi9kcml2ZXJzL21kL3JhaWQxLTEw
LmMKPiA+PiBAQCAtMTA1LDcgKzEwNSwxMiBAQCBzdGF0aWMgdm9pZCBtZF9iaW9fcmVzZXRfcmVz
eW5jX3BhZ2VzKHN0cnVjdCBiaW8gKmJpbywgc3RydWN0IHJlc3luY19wYWdlcyAqcnAsCj4gPj4g
ICAgICAgICAgICAgICAgICAgKiB3b24ndCBmYWlsIGJlY2F1c2UgdGhlIHZlYyB0YWJsZSBpcyBi
aWcKPiA+PiAgICAgICAgICAgICAgICAgICAqIGVub3VnaCB0byBob2xkIGFsbCB0aGVzZSBwYWdl
cwo+ID4+ICAgICAgICAgICAgICAgICAgICovCj4gPgo+ID4gV2Uga25vdyB0aGVzZSB3b24ndCBm
YWlsLiBTaGFsbCB3ZSBqdXN0IHVzZSBfX2Jpb19hZGRfcGFnZT8KPgo+IFdlIGNvdWxkIHllcywg
YnV0IEkga2luZCBvZiBsaWtlIHRoZSBhc3NlcnQoKSBzdHlsZSB3YXJuaW5nLgo+IEJ1dCBvZiBj
YXVzZSB1bHRpbWF0ZWx5IHlvdXIgY2FsbC4KClRoZSBhc3NlcnQoKSBzdHlsZSB3YXJuaW5nIGlz
IGZpbmUuIEluIHRoaXMgY2FzZSwgcGxlYXNlIHJlbW92ZSB0aGUKIndvbid0IGZhaWwgLi4uIiBj
b21tZW50cy4KClRoYW5rcywKU29uZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lv
bkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
