Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6AB6D26F2
	for <lists+jfs-discussion@lfdr.de>; Fri, 31 Mar 2023 19:48:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1piIr6-000152-Vx;
	Fri, 31 Mar 2023 17:48:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1piIr3-00014r-Nw
 for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 17:48:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DVCRJporzTiaASWUNIxQBYcRCs7BLYHGkjpMzyytTv4=; b=Eg12Onxl7vP1Rd7PhA+wusRz5a
 mConsEB6q/EBJ+OuScyT/VQyBll0gClOq1NBYtn9tBlSbXT6x4hFhTHOp0Nq6wGtba9WEjvT0eSnJ
 bP98HYQRMK3FzRCMlcL1WNv/1KRR0TFy2wYkOY+gqI5RF5whdnz82rJ0dnXGBRZNKfrM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DVCRJporzTiaASWUNIxQBYcRCs7BLYHGkjpMzyytTv4=; b=I2qIAzBbr3e5hGfp5SkWhj6hlJ
 WiVbNcdSa7roM7aCUl+JQwREwUAJEHnyMI4TqYtcI7zOwFr5GB6u1YxF3JDwjwzv0KL05W7Qiof89
 NGRoZ4fVPAoHOOpvmbiPdQKhLYP2UmpcX/zLzrdnY40MO+dluGHk1cD+bQQTXt1r+/S8=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piIr3-00B7Er-8V for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 17:48:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F325FB83137
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 17:47:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2923EC433A7
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 17:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680284873;
 bh=DVCRJporzTiaASWUNIxQBYcRCs7BLYHGkjpMzyytTv4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nLzpxrFZz13vPyy4wFw7JKbhrcPZW3g6rdIX41hBr3Eg6FG3bgP7km2dAypgYhdp2
 lDiE7j0An9C7oaBzG0F+m68NEEVH1Fi1Pf3o0UztN/japdLLMr2GmGKwewbkRcaQFX
 8ylFn9mD1FkZkrOqv43jBKheX/KwBLCPQXGvmrH3lCZuGUSpBmvavRq9pZVgb9ix22
 A+wYQL6lbQ79BoCWJRvPHDrqktAFEA1lS7EpSfk4C+VxltkB4D1kYH0uKubgv5Ahz8
 5JPbUJFZE53oIUF+tma0ByYlj+M8H3WcsdUe0Kym2sp2z1OyPxLHARRYH+84+fdO1v
 cZjt17X8Iaymg==
Received: by mail-lf1-f50.google.com with SMTP id k37so29981504lfv.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 10:47:53 -0700 (PDT)
X-Gm-Message-State: AAQBX9eTq16SvjujtlSpuZGUggmsbWw6R2iUJGnnD7TqtIiPIQv+AqDv
 Givsu6aB8mppPmyAjf/i9YlOgtQojgXqnIfgA2I=
X-Google-Smtp-Source: AKy350aTqP2YrCOlXYcmu46Ms0g6qdRMyCTAq79Tt/w62oXAGnJ0At25MIChWLEF5VS5bhZp5mINAfnbMMsd5bIOwyY=
X-Received: by 2002:a05:6512:102b:b0:4ea:f9d4:9393 with SMTP id
 r11-20020a056512102b00b004eaf9d49393mr8226521lfr.3.1680284871209; Fri, 31 Mar
 2023 10:47:51 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
 <d406d7e205f7c7e701275674f77c7e21b93ae7a5.1680172791.git.johannes.thumshirn@wdc.com>
In-Reply-To: <d406d7e205f7c7e701275674f77c7e21b93ae7a5.1680172791.git.johannes.thumshirn@wdc.com>
From: Song Liu <song@kernel.org>
Date: Fri, 31 Mar 2023 10:47:37 -0700
X-Gmail-Original-Message-ID: <CAPhsuW6WUKpMawtw-RE_PsfTcPCtUeTEF5YOEwmVNT+wM7OofQ@mail.gmail.com>
Message-ID: <CAPhsuW6WUKpMawtw-RE_PsfTcPCtUeTEF5YOEwmVNT+wM7OofQ@mail.gmail.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 30, 2023 at 3:44 AM Johannes Thumshirn <johannes.thumshirn@wdc.com>
    wrote: > > The raid5 log metadata submission code uses bio_add_page() to
   add a page > to a newly created bio. bio_add_ [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piIr3-00B7Er-8V
Subject: Re: [Jfs-discussion] [PATCH v2 06/19] md: raid5-log: use
 __bio_add_page to add single page
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
YW5uZXMudGh1bXNoaXJuQHdkYy5jb20+IHdyb3RlOgo+Cj4gVGhlIHJhaWQ1IGxvZyBtZXRhZGF0
YSBzdWJtaXNzaW9uIGNvZGUgdXNlcyBiaW9fYWRkX3BhZ2UoKSB0byBhZGQgYSBwYWdlCj4gdG8g
YSBuZXdseSBjcmVhdGVkIGJpby4gYmlvX2FkZF9wYWdlKCkgY2FuIGZhaWwsIGJ1dCB0aGUgcmV0
dXJuIHZhbHVlIGlzCj4gbmV2ZXIgY2hlY2tlZC4KPgo+IFVzZSBfX2Jpb19hZGRfcGFnZSgpIGFz
IGFkZGluZyBhIHNpbmdsZSBwYWdlIHRvIGEgbmV3bHkgY3JlYXRlZCBiaW8gaXMKPiBndWFyYW50
ZWVkIHRvIHN1Y2NlZWQuCj4KPiBUaGlzIGJyaW5ncyB1cyBhIHN0ZXAgY2xvc2VyIHRvIG1hcmtp
bmcgYmlvX2FkZF9wYWdlKCkgYXMgX19tdXN0X2NoZWNrLgo+Cj4gU2lnbmVkLW9mZi1ieTogSm9o
YW5uZXMgVGh1bXNoaXJuIDxqb2hhbm5lcy50aHVtc2hpcm5Ad2RjLmNvbT4KPiBSZXZpZXdlZC1i
eTogRGFtaWVuIExlIE1vYWwgPGRhbWllbi5sZW1vYWxAb3BlbnNvdXJjZS53ZGMuY29tPgoKQWNr
ZWQtYnk6IFNvbmcgTGl1IDxzb25nQGtlcm5lbC5vcmc+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpm
cy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
