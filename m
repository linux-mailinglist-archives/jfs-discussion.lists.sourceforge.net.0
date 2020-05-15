Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E28A91D4722
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 May 2020 09:35:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jZUs8-0002JB-67; Fri, 15 May 2020 07:35:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jZUs6-0002Iv-Gi
 for jfs-discussion@lists.sourceforge.net; Fri, 15 May 2020 07:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WQFb4IJQ/4IoZHdxesfrZNvoUgDxuGz7bG3/JBTJetA=; b=K9bbQmbubtmAV8CXJJGG4ZqWs3
 ePMWDGE2U3dQ2vaFfxcmawdU5DsQdZnhlYtkNmJIVY+YYBNv0xXOerd7n16D3gua/Ewl9PtSWXlqx
 Kic9TaKcCzTg2GxlNo6AWRy3RertTB8LNLCUy4SvmMWq9bgAkY+YhaKzp6Nd37OY7QmE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WQFb4IJQ/4IoZHdxesfrZNvoUgDxuGz7bG3/JBTJetA=; b=Q8Hdy2c4D+p3E64V5zczDH5Vp9
 aZrnak3OxHm+ihzFaJVTUq0Jisk/FICLf/7556H1CHEr1Rp9FMdHIphpvGNGadtLBmQV7+TEjvm71
 JxlZ8EhrSwU6pYqdP5qTmAJuAG1OBlN+L6z2tUsOV1XT2+dfxZN6/SuJx9sXuxPNp6Pk=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jZUs1-00H5Iq-E1
 for jfs-discussion@lists.sourceforge.net; Fri, 15 May 2020 07:35:06 +0000
Received: by mail-pg1-f194.google.com with SMTP id f4so585570pgi.10
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 15 May 2020 00:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=WQFb4IJQ/4IoZHdxesfrZNvoUgDxuGz7bG3/JBTJetA=;
 b=rsJj1e2q3t2jwORxdG78LcT6xJZCtY/mIbAQgq6pnxoYwdVPWgmpOEnAKOe0P6lK/I
 d4iicScMe0ReXFld3E1/nNty4GU4K3Lqox4S5BjJqHzyuzc766S+bxNR1nIlUIWkacvb
 WNtsAkF45rOLxs59qe50lW1YszlEN980Efy0JUns6riVloZF/CpR4DG1Zc0g60SFFfhP
 Nuq15a0uILo7F26S7Yl1C4OAeUramBg2726LRQJHB+v8CEvPYVX3iXAv57hHoDkTnD71
 Wi4B7eNYJuLhgf2oUDFCuNbHa620Md8FQN7Emqv/pWlcXtrgiVlI2BSYCp44KzJ1/kLO
 Vgwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=WQFb4IJQ/4IoZHdxesfrZNvoUgDxuGz7bG3/JBTJetA=;
 b=p8mI/bvTnNHiS3ot2Tbv8QWd+giADefDImr1B6b0pnjOyNtsgeDcCpDQy0V70uJSKu
 bI+GQmQXZH8UFdg/hH4k+6W1rkh5fNFf421pgZmh3PvGLVed4cjZi2vxzzQDeuTt/fhK
 M05+due5deh+LsVGPJk3jDbKde0mgwNtogqHXwgQZV7UJ+AKtz5n3sOXHKKR/yzrMsE2
 xPC9FEuo536viPpJt9YZ/d2M2dNMBTznUA7VLHxgq8ssrK4s4d5nfhRBKbLL+NoblbnD
 hkbYGxdvLHwUYdNVnIy5Orq/qo5F2v4Ojkm/ACYyMUziFrL9cweqe1HaH1HaXzVu4ZBz
 941A==
X-Gm-Message-State: AOAM531WJvBV+DdMYARTH2LqYq3zqkSBPxgvkyklWDxtuBX99nENOYbv
 BHCxS8FwYWldTpxlncXnriU=
X-Google-Smtp-Source: ABdhPJy3eYPQrEimsfl4R6hgnQ1yTD2PP+uByYo4iQSSNxbBvQQzt3+AvPUsfo1S5dbxP/VlmPlx1Q==
X-Received: by 2002:a62:3006:: with SMTP id w6mr2543044pfw.29.1589528095930;
 Fri, 15 May 2020 00:34:55 -0700 (PDT)
Received: from [166.111.139.117] ([166.111.139.117])
 by smtp.gmail.com with ESMTPSA id y21sm1143149pfm.219.2020.05.15.00.34.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 00:34:54 -0700 (PDT)
To: Hillf Danton <hdanton@sina.com>, Rong Chen <rong.a.chen@intel.com>
References: <20200512030929.GA5770@shao2-debian>
 <alpine.DEB.2.22.395.2005132123020.14542@trent.utfs.org>
 <20200514154251.18184-1-hdanton@sina.com>
From: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <096463bb-cef1-495b-5ef9-460f8f41fffb@gmail.com>
Date: Fri, 15 May 2020 15:34:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200514154251.18184-1-hdanton@sina.com>
Content-Language: en-US
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jZUs1-00H5Iq-E1
Subject: Re: [Jfs-discussion] [fs] 05c5a0273b: netperf.Throughput_total_tps
 -71.8% regression
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
Cc: Christian Kujau <lists@nerdbynature.de>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, Markus.Elfring@web.de,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net



On 2020/5/14 23:42, Hillf Danton wrote:
> On Thu, 14 May 2020 13:12:18 +0800 Rong Chen wrote:
>> On 5/14/20 12:27 PM, Christian Kujau wrote:
>>> On Tue, 12 May 2020, kernel test robot wrote:
>>>> FYI, we noticed a -71.8% regression of netperf.Throughput_total_tps due to commit:
>>> As noted in this report, netperf is used to "measure various aspect of
>>> networking performance". Are we sure the bisect is correct? JFS is a
>>> filesystem and is not touching net/ in any way. So, having not attempted
>>> to reproduce this, maybe the JFS commit is a red herring?
>>>
>>> C.
>> Hi,
>>
>> The commit also causes -74.6% regression of will-it-scale.per_thread_ops:
>>
>> in testcase: will-it-scale
>> on test machine: 8 threads Intel(R) Core(TM) i7-3770K CPU @ 3.50GHz with 16G memory
>> with following parameters:
>>
>> 	nr_task: 100%
>> 	mode: thread
>> 	test: unlink2
>> 	cpufreq_governor: performance
>> 	ucode: 0x21
>>
>> I'll send another report for this regression.
>>
>> Best Regards,
>> Rong Chen
> Hi
>
> Would it make sense in terms of making robot and fuzzer happy to replace
> spin lock with memory barrier, say the changes below?
>
> Hillf
>
> --- a/fs/jfs/jfs_txnmgr.c
> +++ b/fs/jfs/jfs_txnmgr.c
> @@ -416,6 +416,7 @@ tid_t txBegin(struct super_block *sb, in
>   	 * memset(tblk, 0, sizeof(struct tblock));
>   	 */
>   	tblk->next = tblk->last = tblk->xflag = tblk->flag = tblk->lsn = 0;
> +	smp_wmb(); /* match mb in txLazyCommit() */
>   
>   	tblk->sb = sb;
>   	++log->logtid;
> @@ -2683,10 +2684,16 @@ static void txLazyCommit(struct tblock *
>   {
>   	struct jfs_log *log;
>   
> -	while (((tblk->flag & tblkGC_READY) == 0) &&
> -	       ((tblk->flag & tblkGC_UNLOCKED) == 0)) {
> -		/* We must have gotten ahead of the user thread
> -		 */
> +	for (;;) {
> +		u16 flag = tblk->flag;
> +
> +		smp_rmb(); /* match mb in txBegin() */
> +		if (flag & tblkGC_READY)
> +			break;
> +		if (flag & tblkGC_UNLOCKED)
> +			break;
> +
> +		/* We must have gotten ahead of the user thread */
>   		jfs_info("jfs_lazycommit: tblk 0x%p not unlocked", tblk);
>   		yield();
>   	}
> @@ -2698,9 +2705,9 @@ static void txLazyCommit(struct tblock *
>   	log = (struct jfs_log *) JFS_SBI(tblk->sb)->log;
>   
>   	spin_lock_irq(&log->gclock);	// LOGGC_LOCK
> -
> +	smp_mb__after_spinlock();
>   	tblk->flag |= tblkGC_COMMITTED;
> -
> +	smp_wmb();
>   	if (tblk->flag & tblkGC_READY)
>   		log->gcrtc--;
>   
>

I think this patch is okay.
Thanks a lot, Hillf :)


Best wishes,
Jia-Ju Bai


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
