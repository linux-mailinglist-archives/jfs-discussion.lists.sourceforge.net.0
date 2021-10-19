Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C971433706
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Oct 2021 15:26:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcp8X-0006LE-FJ; Tue, 19 Oct 2021 13:26:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <axboe@kernel.dk>) id 1mcdYy-0002o3-Oc
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Oct 2021 01:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W5z0exFABNpBPX1hRqcH8nqG0V53/7e/1qraB3crDBc=; b=O0s6cRMnfIPn1sINAsoAtNoyqw
 NXM+g8+QBGTeuR1dGAzKIdZfYWd8yVFe8dl/qViYYxmRmAErmbZa1PSYTbYqXyQfoSIO9tf2Ic9iH
 /Dmf1aj+Roj0bR7dJO8Sl/4suJJu6K4zvltRD10caF1vQkzWVOhZ5wF4gISRH+ESqZ9A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W5z0exFABNpBPX1hRqcH8nqG0V53/7e/1qraB3crDBc=; b=Fl6wt4uBT3sPzgWqcSwKIm0qOr
 rQsWWNj1pIHGbvTD1Rz3goMH5MquPijSR77QiKraOcGpH8kq44S9LxlLy9EYm/lhRJ7oAOyPPJ/08
 JEROXtQ4MwdN9R32bLjnsxsK3JTq7LlSzQ7f2Wai/82yA1+IKiR53HJcJI1XfeuN8kUw=;
Received: from mail-io1-f53.google.com ([209.85.166.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mcdYu-005686-TD
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Oct 2021 01:05:08 +0000
Received: by mail-io1-f53.google.com with SMTP id h196so18501997iof.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 18 Oct 2021 18:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=W5z0exFABNpBPX1hRqcH8nqG0V53/7e/1qraB3crDBc=;
 b=vB+wFpSQtfAUhwdXcfynbmYwp0hdBEQZvbX6X9F6PNzCrR7jlF3UU0FKlXz+m74FXo
 fYCfnp+UOHId9lQV8O9fyEh4YEI0b538At136V3n0vh4OZ/YzMev/Q7gmlb/eOGGE5cU
 0c1i9lZ2acvXLmYa878iz+lCi3R78xqn0ZDpYtIVtZNxoFJsKdSEsj9/YVhugl90Ar3H
 SoUxghi0wJ6VSD6JvL3P+s/JM6f3Wm0mmMYFgaEag1ojhi+wlEeYXumrYWwARkL2eroz
 Ue9QqS/6wvsrqGxlajrxCGxhjXwobZTI+icumh8oCIQgK1Jfr75Nwh+NZuFxcTfoqOvP
 WcvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W5z0exFABNpBPX1hRqcH8nqG0V53/7e/1qraB3crDBc=;
 b=ww8Uw3nqwHICLyTlUJNql7mMI4ooVE6ObfthLn73ncObDFOJSsqCnvJ+KkSC8saXzi
 rWfm8ccudZsJ5EAgqFzW/vUUul6BISvC9kf5DtqVomWTXsyqPAsuhj0MBMG6BZufkWtz
 JKcINAB3Lnbrzje0wTTWm7U1AVgwPltZUeUuQbQ8C2uNWSBUhzXEgkFtcSe2BysqKOHj
 qziwZQvRjnVQYAR43p7O/kyx1tbnOPuj8S1jNtZm3aZKyGqxGd5bzOaiO9GvMWZvgq6T
 z1bK41dgRN8SCkwmw5GUEoDTZGBg9Z9y9t7bJdZZh4j6nI5A6uoaanlS5CkEM0umgx3d
 tALQ==
X-Gm-Message-State: AOAM533jKdku0NB2JkbykjIfqYTVHI49kSTx2S0vEc1BpNyqbtVhnUaR
 dbsEm4dMM821sER4xP7cM8N7kw==
X-Google-Smtp-Source: ABdhPJxThXMAcCMjPpDBYOBzNUVp6z4TAqcvNSoJJDW60phmikuRtzHD4NR4koFPUymcotmxVpLHsA==
X-Received: by 2002:a6b:102:: with SMTP id 2mr16592131iob.185.1634605499259;
 Mon, 18 Oct 2021 18:04:59 -0700 (PDT)
Received: from [192.168.1.116] ([66.219.217.159])
 by smtp.gmail.com with ESMTPSA id g13sm116963ilf.60.2021.10.18.18.04.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Oct 2021 18:04:58 -0700 (PDT)
To: Kari Argillander <kari.argillander@gmail.com>
References: <20211018101130.1838532-1-hch@lst.de>
 <4a8c3a39-9cd3-5b2f-6d0f-a16e689755e6@kernel.dk>
 <20211018171843.GA3338@lst.de>
 <2f5dcf79-8419-45ff-c27c-68d43242ccfe@kernel.dk>
 <20211018174901.GA3990@lst.de>
 <e0784f3e-46c8-c90c-870b-60cc2ed7a2da@kernel.dk>
 <20211019010416.vgecxu6wnvwi7fii@kari-VirtualBox>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <81f9ad59-4c15-b265-1274-62c987ad879b@kernel.dk>
Date: Mon, 18 Oct 2021 19:04:57 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20211019010416.vgecxu6wnvwi7fii@kari-VirtualBox>
Content-Language: en-US
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/18/21 7:04 PM, Kari Argillander wrote: > On Mon, Oct
 18, 2021 at 11:53:08AM -0600, Jens Axboe wrote: > > snip.. > >> diff --git
 a/include/linux/genhd.h b/include/linux/genhd.h >> index 7b0326661 [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.53 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mcdYu-005686-TD
X-Mailman-Approved-At: Tue, 19 Oct 2021 13:26:35 +0000
Subject: Re: [Jfs-discussion] don't use ->bd_inode to access the block
 device size v3
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
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/18/21 7:04 PM, Kari Argillander wrote:
> On Mon, Oct 18, 2021 at 11:53:08AM -0600, Jens Axboe wrote:
> 
> snip..
> 
>> diff --git a/include/linux/genhd.h b/include/linux/genhd.h
>> index 7b0326661a1e..a967b3fb3c71 100644
>> --- a/include/linux/genhd.h
>> +++ b/include/linux/genhd.h
>> @@ -236,14 +236,14 @@ static inline sector_t get_start_sect(struct block_device *bdev)
>>  	return bdev->bd_start_sect;
>>  }
>>  
>> -static inline loff_t bdev_nr_bytes(struct block_device *bdev)
>> +static inline sector_t bdev_nr_sectors(struct block_device *bdev)
>>  {
>> -	return i_size_read(bdev->bd_inode);
>> +	return bdev->bd_nr_sectors;
>>  }
>>  
>> -static inline sector_t bdev_nr_sectors(struct block_device *bdev)
>> +static inline loff_t bdev_nr_bytes(struct block_device *bdev)
>>  {
>> -	return bdev_nr_bytes(bdev) >> SECTOR_SHIFT;
>> +	return bdev_nr_setors(bdev) << SECTOR_SHIFT;
> 
> setors -> sectors

Yep, did catch that prior.

-- 
Jens Axboe



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
