Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E82D6299F6
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Nov 2022 14:22:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouvsp-0004bh-QF;
	Tue, 15 Nov 2022 13:21:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <me@bobcopeland.com>) id 1oumjK-00050Q-Vr
 for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Nov 2022 03:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I5DBoIqNagH3XrdRY1r6Eco1A6aUzboNusmzdLRomUQ=; b=IJ4H4l2mdbbAMzVhcb47hnAl3p
 8TgXN/0ST/mkk8Zhjf+usslHoop3Z+UksZ9fFlApTIqlb3SRszU7KvdTQBxg9f/jCy2NUVgo9aKUn
 7J2OSl1R2CzAgFb3n0Nyy8yYKtTMsgLVB+meHmVwxeuoeI1q/uOmUmMwB9NgrpAkeGpg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I5DBoIqNagH3XrdRY1r6Eco1A6aUzboNusmzdLRomUQ=; b=mQtLWzVCW4yKMjr5C7v/E6nC4u
 og6yYW9YKLxMYAakz5zSofeDH4MO9fl0wAEhOsGwE/U9OzvUGMpMPLE7lJ2Sjy5nG+wDUlKG7i6Jk
 HMPLSZB5qoXkDAI5LQs1B4XVYHoR7TTz4iIVnrgiAmzP105xI9lqmW/HwRifPdx8IQDI=;
Received: from mail-pf1-f182.google.com ([209.85.210.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oumjB-008eTD-L9 for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Nov 2022 03:35:17 +0000
Received: by mail-pf1-f182.google.com with SMTP id z26so12948395pff.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 14 Nov 2022 19:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bobcopeland-com.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=I5DBoIqNagH3XrdRY1r6Eco1A6aUzboNusmzdLRomUQ=;
 b=BhLHIICyakMONq9rF7PTSR31xmu60lcMvmCY2Ved5pkA3CMCOwasit37iZcXH0t3gO
 vrFIOD/CM1U2YYMLP1XsvBhAbnHH4PJKe3YQ0MjuyKctAqaf9Ff7fMqBk+SsV2m8+3db
 71ZCvALpPlT/q2S+hSblu9+dC/IKszNgG+3jzwGoUOG9Zy2wWDRYNPJpeWnK8/HcE24t
 3JiAgikkYgpvRkYFtTiB+4T5XYg65wOvoTqt7zqXOOM5yuEy0AX0TtI/ZtUUXicF99Ss
 HsFcjTd41n/aJfhMi1UN+8CIJuQtL0jJjhlOHwj22oV7V2hF2B46FKI4hNuo8rvD+or6
 FEVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I5DBoIqNagH3XrdRY1r6Eco1A6aUzboNusmzdLRomUQ=;
 b=nDvO3bsoXDQYnSaied/kcTpOkytpJkx62vQnFCedM9ymrJHtnw20OXpOEEtmggZ3Vm
 A0Q1DpU8JZyHhODKFJfmDlXpzE1hJrEHAeSGF006Hyd/vIivnm6widYJ/rBIiuMv+Efw
 q/6O1ciYwgrOnKzyp5lzF7/gnv9ogGy+8yBEAqHnu8aCB7sOKxDVTBr0iT7MP4ruR6gN
 ZL4OZQJ9y7ukK7QAfCjGMPfmPfijzYQn+jHcQmW4b3sQ7OX4+w5QaKYgvuOB2JIIRikg
 8OBLSbhJ1O0xzaHHTlhH8iPxmeeLeqTAVwtFYMjAedFAQgfA1RFxlXzjOfmNsYki351S
 B1pQ==
X-Gm-Message-State: ANoB5pksu8ZEXQpIaSZ8Fyp73H7zunFfqHAwXSCz4a6mJQjA4IsG0oYR
 iu53qW2s999DYPfc0iaRr+CeHym0kcOrfAcz
X-Google-Smtp-Source: AA0mqf7kAKIWh2OS1WpDznT7RyX7mgjfWyyk2UEacMxAMSsL23+bcKLTzBzFPbqhHAEvBf20J60FbQ==
X-Received: by 2002:a92:d305:0:b0:2f9:b594:970 with SMTP id
 x5-20020a92d305000000b002f9b5940970mr7467585ila.56.1668479682530; 
 Mon, 14 Nov 2022 18:34:42 -0800 (PST)
Received: from elrond.bobcopeland.com ([142.113.148.203])
 by smtp.gmail.com with ESMTPSA id
 e99-20020a02866c000000b0035b3e0a3243sm4064564jai.57.2022.11.14.18.34.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Nov 2022 18:34:42 -0800 (PST)
Received: by elrond.bobcopeland.com (Postfix, from userid 1000)
 id 0953CFC00A9; Mon, 14 Nov 2022 21:34:37 -0500 (EST)
Date: Mon, 14 Nov 2022 21:34:37 -0500
From: Bob Copeland <me@bobcopeland.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <Y3L6vah7mSxFjZ28@bobcopeland.com>
References: <20221113162902.883850-1-hch@lst.de>
 <20221113162902.883850-9-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221113162902.883850-9-hch@lst.de>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Nov 13, 2022 at 05:29:01PM +0100, Christoph Hellwig
 wrote: > ->writepage is a very inefficient method to write back data, and
 only > used through write_cache_pages or a a fallback when no ->mi [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.182 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oumjB-008eTD-L9
X-Mailman-Approved-At: Tue, 15 Nov 2022 13:21:45 +0000
Subject: Re: [Jfs-discussion] [PATCH 8/9] omfs: remove ->writepage
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
 linux-ext4@vger.kernel.org, linux-karma-devel@lists.sourceforge.net,
 linux-mm@kvack.org, Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Sungjong Seo <sj1557.seo@samsung.com>, Namjae Jeon <linkinjeon@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Nov 13, 2022 at 05:29:01PM +0100, Christoph Hellwig wrote:
> ->writepage is a very inefficient method to write back data, and only
> used through write_cache_pages or a a fallback when no ->migrate_folio
> method is present.
> 
> Set ->migrate_folio to the generic buffer_head based helper, and remove
> the ->writepage implementation.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good,

Acked-by: Bob Copeland <me@bobcopeland.com>

-- 
Bob Copeland %% https://bobcopeland.com/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
