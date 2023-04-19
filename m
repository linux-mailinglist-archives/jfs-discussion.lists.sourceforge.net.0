Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFE06E7EDC
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Apr 2023 17:49:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppA3u-0004NO-RD;
	Wed, 19 Apr 2023 15:49:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppA3t-0004NI-Ol
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 15:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 Subject:From:References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eOUql/Ro9WMFOAkCEiG4JHxRup0JACmg1t6/598D9Co=; b=W/4CIyMbfJP//OE+rbM6G+Mq4r
 nzxgr1e4W2ObZB8xEfxW54QsIizXcw8xb38kWyLarVtMlH0AyZOwO6LhqiRfnGBspQIb/mCA8qroB
 ofU30RNp3J/3e+85j5nZdgnt9sMVte3U+Za7f8jPcD8G+rzrN8VNzJ4kVaUDZVb1hVUs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Subject:From:
 References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eOUql/Ro9WMFOAkCEiG4JHxRup0JACmg1t6/598D9Co=; b=N7d2+VhRjuvoGOyO9QANgeugCE
 EbKH/1iS6/E0A7PN97Gyj6iEPly7XZIeZB5VFV5D1v6up6imYQtTo6qjIra8UFwtyD7fPwPyx77+S
 jhhNI35k5OZgODqjRDD241QGvpqo8aMwqSe9arh+5aBpTID/nUhxT+0oyZlzlHE0Am3g=;
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppA3t-00063l-9R for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 15:49:37 +0000
Received: by mail-ej1-f46.google.com with SMTP id dx24so38908530ejb.11
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Apr 2023 08:49:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681919371; x=1684511371;
 h=content-transfer-encoding:in-reply-to:subject:from:content-language
 :references:cc:to:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eOUql/Ro9WMFOAkCEiG4JHxRup0JACmg1t6/598D9Co=;
 b=OoQE5veraitChUVzibJy9npPSbPi3WJ8NTEAkOL+x8xrzgUdzqNgzwn4yfPr0A200F
 bKT5J4yWoXQo9/x4kVBGoH2E5b/gaAIQCgRjZRDQhgcN4hKQS1cUU/1hJYjAkqk9G+Bz
 aocoz+IGPJdEdY+tHQl9o2/PF6YGT4h786gd+Zrq33mSXv/BQrSkJfo9u/fL+SX3Jczq
 AJ8OgIlRrOatVtI1jKLdu97AV24TKoOjQfF8BPN/H7VRwVvb/K2ZDtXmNkqrD0zhgoq7
 2VNV/0rVnTIcEoXR27DqtBoAqlB3NGag8ujX443tAV0Dy1xTVY6V1C6NlGtcGg5VDe+q
 Y6Pw==
X-Gm-Message-State: AAQBX9e89SEdJXk2PhZ9DOjAF8ywew4olZvt4+jXUudUoCOc6PIzJR+Q
 r/aGCifOppuwEsqEYI2Y3Qc=
X-Google-Smtp-Source: AKy350aGL2zkmqe4oR+uMj3AvMO3DzPKJ+2nYfKvNg29gbfKfCGrXHIDbSOpWzqvwSwoi/4pOYVBdg==
X-Received: by 2002:a17:907:98ef:b0:92c:8e4a:1a42 with SMTP id
 ke15-20020a17090798ef00b0092c8e4a1a42mr15999637ejc.32.1681919370719; 
 Wed, 19 Apr 2023 08:49:30 -0700 (PDT)
Received: from [192.168.32.129] (aftr-62-216-205-204.dynamic.mnet-online.de.
 [62.216.205.204]) by smtp.gmail.com with ESMTPSA id
 o26-20020a1709061d5a00b0094e44899367sm9373601ejh.101.2023.04.19.08.49.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Apr 2023 08:49:30 -0700 (PDT)
Message-ID: <0388e267-6a5f-85b8-83eb-62ea5aae06e1@kernel.org>
Date: Wed, 19 Apr 2023 17:49:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Matthew Wilcox <willy@infradead.org>
References: <20230419140929.5924-1-jth@kernel.org>
 <20230419140929.5924-20-jth@kernel.org>
 <ZD/4b9ZQ1YZRTgHL@casper.infradead.org>
Content-Language: en-US
From: Johannes Thumshirn <jth@kernel.org>
In-Reply-To: <ZD/4b9ZQ1YZRTgHL@casper.infradead.org>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 19/04/2023 16:19, Matthew Wilcox wrote: > On Wed, Apr 19, 
 2023 at 04:09:29PM +0200, Johannes Thumshirn wrote: >> Now that all users
 of bio_add_page check for the return value, mark >> bio_add_page [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.46 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -2.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ppA3t-00063l-9R
Subject: Re: [Jfs-discussion] [PATCH v3 19/19] block: mark bio_add_page as
 __must_check
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-mm@kvack.org,
 dm-devel@redhat.com, hch@lst.de, agruenba@redhat.com,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, cluster-devel@redhat.com,
 kch@nvidia.com, snitzer@kernel.org, ming.lei@redhat.com,
 linux-block@vger.kernel.org, rpeterso@redhat.com, hare@suse.de,
 dsterba@suse.com, axboe@kernel.dk, linux-raid@vger.kernel.org,
 damien.lemoal@wdc.com, song@kernel.org, johannes.thumshirn@wdc.com,
 linux-fsdevel@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 19/04/2023 16:19, Matthew Wilcox wrote:
> On Wed, Apr 19, 2023 at 04:09:29PM +0200, Johannes Thumshirn wrote:
>> Now that all users of bio_add_page check for the return value, mark
>> bio_add_page as __must_check.
> 
> Should probably add __must_check to bio_add_folio too?  If this is
> really the way you want to go ... means we also need a
> __bio_add_folio().

I admit I haven't thought of folios, mea culpa.

3 of the callers of bio_add_folio() don't check the return value:
$ git grep -E '\sbio_add_folio\b'
fs/iomap/buffered-io.c:         bio_add_folio(ctx->bio, folio, plen, poff);
fs/iomap/buffered-io.c: bio_add_folio(&bio, folio, plen, poff);
fs/iomap/buffered-io.c:         bio_add_folio(wpc->ioend->io_bio, folio, 
len, poff);

But from a quick look they look OK to me.

Does that look reasonable to you:

diff --git a/block/bio.c b/block/bio.c
index fd11614bba4d..f3a3524b53e4 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -1138,6 +1138,14 @@ int bio_add_page(struct bio *bio, struct page *page,
  }
  EXPORT_SYMBOL(bio_add_page);

+void __bio_add_folio(struct bio *bio, struct folio *folio, size_t len,
+                    size_t off)
+{
+       WARN_ON_ONCE(len > UINT_MAX);
+       WARN_ON_ONCE(off > UINT_MAX);
+       __bio_add_page(bio, &folio->page, len, off);
+}
+
  /**
   * bio_add_folio - Attempt to add part of a folio to a bio.
   * @bio: BIO to add to.


Byte,
	Johannes


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
