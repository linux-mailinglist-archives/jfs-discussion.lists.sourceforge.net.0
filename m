Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C376D271F
	for <lists+jfs-discussion@lfdr.de>; Fri, 31 Mar 2023 19:54:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1piIxI-0001TW-0M;
	Fri, 31 Mar 2023 17:54:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1piIxG-0001TQ-Ga
 for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 17:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/GcLV93lKWccb0UkfmjqOyuowcihEvlzwtkH6TySgoM=; b=HmDSEjGiNO2xcCznsgzD+lT/R5
 icCeHecg5+H2sKYC/3f6+As13cqXN12P9zEHbO7DPT2WKGCf0ZYHAGSsdfxTOGxUe8db9iXY2x3TH
 ewD11WVjXOrJumfor7bHtvR4S5Exwjym4RiTAlV5u4IyTllZ5BgHIAmwyH1vziXFwqp4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/GcLV93lKWccb0UkfmjqOyuowcihEvlzwtkH6TySgoM=; b=ByPmmiD1dtn19ysz5FHMDZ4HO7
 cKJARmmvCOv5NKDMioev0PTLJ7QfhMjgXoJ0RHEcMdCHA5Op7/WWSmQbySUukEoJcBcItOiX8UJAi
 eomm7MvHxHtgBSVv6BIp2sfCZAv2oHYZ3vE9mZYMf6ITq6d7xDj/u0rkFZ/ehjogMT3g=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piIxD-0000w0-NW for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 17:54:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5310162AFE
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 17:54:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 354F3C433A0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 17:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680285257;
 bh=Ijr+WNx7ld4U5ZO+OP83Langs78qK2JwUNbqX48Y74E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NlUsYXunWuWGa5qJtzHr2cVFf2mzdtZdXDwqqDzEtj1erN4/UEH5oBLlA+R2q+o1M
 an2FD0E0FdazXGvuATGaJmC6tuT0zRlQ77fXpvY6pFX1I42bhRwtRYb4EwVwsSCshv
 /w7kqF7Q3A9R8Y/I8mdEGr3HrwyFsaYA6YJOFbpxZM1X9TKmHN/m1uW21mhvN0lJMK
 W/4KbeJ5FOFz+PGsFgDTzifZVWsSERPeuLJNL5OC6eK7xe2WmPdFCF+EV4iuGiHj1+
 6zB4x/ZbN1oFJEdXH97hYDgTq4gsGJ14oSMEKjopTYWGs3WLQoStd3EbVOC7opi8re
 k+Npd+3KW4cdA==
Received: by mail-lf1-f46.google.com with SMTP id x17so29974274lfu.5
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 10:54:17 -0700 (PDT)
X-Gm-Message-State: AAQBX9ekoKkJ+jvRa/hJCjiZyuU8e6W4/zl0os36XLU4YY7ogc/wg3v7
 qqWzA9C9lC/yK3ML8OtvDpEvaoJIhO1l9yf3+Jc=
X-Google-Smtp-Source: AKy350YvKqb0dBoMYfGdDtedXvU05FWt6KdyndNuIJije8MdSUJrkHi6AamvXBmeJg5t6pczjm2RarPTQzd6MOIJepA=
X-Received: by 2002:ac2:5610:0:b0:4dd:a4e1:4861 with SMTP id
 v16-20020ac25610000000b004dda4e14861mr8234430lfd.3.1680285255256; Fri, 31 Mar
 2023 10:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
 <07ae41b981f1b5f8de80a3f0a8ab2f34034077a6.1680172791.git.johannes.thumshirn@wdc.com>
In-Reply-To: <07ae41b981f1b5f8de80a3f0a8ab2f34034077a6.1680172791.git.johannes.thumshirn@wdc.com>
From: Song Liu <song@kernel.org>
Date: Fri, 31 Mar 2023 10:54:03 -0700
X-Gmail-Original-Message-ID: <CAPhsuW4gxjRx-X6d46O7SsNb=nesrUKVv+s76C1DtkZdcGmyXw@mail.gmail.com>
Message-ID: <CAPhsuW4gxjRx-X6d46O7SsNb=nesrUKVv+s76C1DtkZdcGmyXw@mail.gmail.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 30, 2023 at 3:44 AM Johannes Thumshirn <johannes.thumshirn@wdc.com>
    wrote: > > alloc_behind_master_bio() can possibly add multiple pages to a
    bio, but it > is not checking for the return [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piIxD-0000w0-NW
Subject: Re: [Jfs-discussion] [PATCH v2 15/19] md: check for failure when
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
YW5uZXMudGh1bXNoaXJuQHdkYy5jb20+IHdyb3RlOgo+Cj4gYWxsb2NfYmVoaW5kX21hc3Rlcl9i
aW8oKSBjYW4gcG9zc2libHkgYWRkIG11bHRpcGxlIHBhZ2VzIHRvIGEgYmlvLCBidXQgaXQKPiBp
cyBub3QgY2hlY2tpbmcgZm9yIHRoZSByZXR1cm4gdmFsdWUgb2YgYmlvX2FkZF9wYWdlKCkgaWYg
YWRkaW5nIHJlYWxseQo+IHN1Y2NlZWRlZC4KPgo+IENoZWNrIGlmIHRoZSBwYWdlIGFkZGluZyBz
dWNjZWVkZWQgYW5kIGlmIG5vdCBiYWlsIG91dC4KPgo+IFNpZ25lZC1vZmYtYnk6IEpvaGFubmVz
IFRodW1zaGlybiA8am9oYW5uZXMudGh1bXNoaXJuQHdkYy5jb20+Cj4gUmV2aWV3ZWQtYnk6IERh
bWllbiBMZSBNb2FsIDxkYW1pZW4ubGVtb2FsQG9wZW5zb3VyY2Uud2RjLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9tZC9yYWlkMS5jIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWQvcmFpZDEuYyBi
L2RyaXZlcnMvbWQvcmFpZDEuYwo+IGluZGV4IDY4YTllMmQ5OTg1Yi4uYmQ3YzMzOWE4NGExIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWQvcmFpZDEuYwo+ICsrKyBiL2RyaXZlcnMvbWQvcmFpZDEu
Ywo+IEBAIC0xMTQ3LDcgKzExNDcsOCBAQCBzdGF0aWMgdm9pZCBhbGxvY19iZWhpbmRfbWFzdGVy
X2JpbyhzdHJ1Y3QgcjFiaW8gKnIxX2JpbywKPiAgICAgICAgICAgICAgICAgaWYgKHVubGlrZWx5
KCFwYWdlKSkKPiAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGZyZWVfcGFnZXM7Cj4KPiAt
ICAgICAgICAgICAgICAgYmlvX2FkZF9wYWdlKGJlaGluZF9iaW8sIHBhZ2UsIGxlbiwgMCk7Cj4g
KyAgICAgICAgICAgICAgIGlmICghYmlvX2FkZF9wYWdlKGJlaGluZF9iaW8sIHBhZ2UsIGxlbiwg
MCkpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byBmcmVlX3BhZ2VzOwoKV2Ugd2lsbCBs
ZWFrIHBhZ2UgaGVyZSwgbm8/CgpUaGFua3MsClNvbmcKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZz
LWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
