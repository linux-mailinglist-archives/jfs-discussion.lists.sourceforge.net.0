Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE422A70790
	for <lists+jfs-discussion@lfdr.de>; Tue, 25 Mar 2025 18:01:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tx7dr-0003Fo-Nn;
	Tue, 25 Mar 2025 17:00:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <purvayeshi550@gmail.com>) id 1tx7dr-0003Fg-5d
 for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Mar 2025 17:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Azc65USrzFasHU1jO29UHHSBs9Cx7/6a82Lf9CyANV0=; b=llcpPkSIdiyJ5nirKOa369U89a
 yk7ffQt4pTKN8j+BC+/eXLf95CErUAWCCUPhyFSZzOw0xCdIXcjwmVhF/DdnNJuch7MYAYegCg+SX
 UAJEYlCiCzAziMheygrQPQozafhq71FMOfq9QwIu15sM14QxhW9ZvunsvlMEb8Q8olSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Azc65USrzFasHU1jO29UHHSBs9Cx7/6a82Lf9CyANV0=; b=DxxXtj1iw+J30KJeyCdMFcYd94
 fEwDdTsdsGm/M8ankQMx6o2URn9tNckhGaSigZ11WUqshbA5u42HChL2eP7tfKHeoRojlVG44+dXP
 b6tJGoGsobiH564SqA8hTuyQxQRszpQl/+eLMwy1t2toYbJt7/qgEvrXgE2iZtPjggFA=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tx7dm-00049X-30 for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Mar 2025 17:00:43 +0000
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-22580c9ee0aso121167975ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 25 Mar 2025 10:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742922027; x=1743526827; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Azc65USrzFasHU1jO29UHHSBs9Cx7/6a82Lf9CyANV0=;
 b=RIWZ66Pu1zUNtQr66CAB5Cjrtqca1lc0JFX5u87Cf48Fxjbvelyvaj9FYIPLANIcKv
 b/xMxDU0EqQxBWn0nAB7J/UsdPI50G4ysWIfW2W7PDMM5f13HNU/LG3Nil5BtrHH7FwV
 ytnqZtkDieQ83db5iUi2uNq6U0aiiXunR8ZO+HL4x7v9w1q7fjM1davRYf1iT1/pZFsW
 2cVK2yL3GagI7GMIkTMB/49kmTi/0havXbJlKbIbdyfptNkg84WYUBP4eL3lMLtrg/Ro
 9DLI0Dxsobm4oAlRxzbXYInwAkkPuFPh8SwnoHTWa25BtNGBQYjr8OYXqh72FkiRFtAw
 tcIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742922027; x=1743526827;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Azc65USrzFasHU1jO29UHHSBs9Cx7/6a82Lf9CyANV0=;
 b=Q3dGKLjW09txA0MI8+28GCXALDRkabw3UB1sUXeWgBDfBwuOk6QftZX4VvIQJPG589
 gM0EW3gdk3McCMD3YrMueuu6efy6IyVJN6IxtQP10Hyp7UA7rU522xWdvh0mPUtgNNi8
 kM/+oBAGgbbb8aJUIGx3hegSH3pHaBs2iKUMAXTfegYxXVY+iVduwfn58xbV+KQOQcKy
 AyepC032QNZIeY0/lZJRFAoehgMUzuGm89uIqWbQ6/qm8/tjlGAKZx78hmYWqVrKnhaF
 UliYIHynZU72mznfd9yaelX6+MaHk6cggkrSswWUHU5inh7ALsMYDqVmZhzOLIlvZIVG
 xubA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWjtBfI/96pDSEy6Zw1AYnP/HEpEUdw4yeWNR0Mu+t5cmssUeMNqzG+mtcRUQotNeIhz0pmRvpSoFN8SlvBNQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Ywor2LhlCZH4dlWDWve+C4V672WKBSPtNafED5CC9kteobt8vPw
 qhmO6x2sPj8BRpQDC85DQwmfbiY41vXd8/xkBNuIlCYDLMY798S4
X-Gm-Gg: ASbGncuAapMSiLFKQ6RBi8TknsgY6rBojIiW3uul1O3YH3KKX9D7kJLwYBSXS67meGe
 qNKxEUmQnlLaWJDuakO7/oY1n4TcRvDhO7Monqe8rWyP5ovVuXqx0r/VH/Hx0EfDgg8IVpm2Oio
 +QnI3LvS+2s6jxn+EHlWvLQTzqC51qndUkdw7HFb48U4uC3sSCA7jXEcarP6cZuZLkLq3PZ/+yl
 CjOVUVrQf61UYMb5BV8K/IU03d4jpQuFrXIdI4txwYwoVarRsd2M7UneRuS9rShiRq7JH1iXHGH
 CxfM9gRLa8Z65mMpdMxUQyFK2dJPuKfnQpDfXzODLKUXo7Xy50YXVBGrN8S6jgvyZAuTiVtIrYo
 nCzdrP79SuwN51jV4QnSOhg==
X-Google-Smtp-Source: AGHT+IEtyy/9fIlH63J5nf464X6zt4pW5HhepzL30KIteieGw8th0/q5z55+RkGRF7k3MuqwqELCXA==
X-Received: by 2002:a05:6a00:2291:b0:736:53c5:33ba with SMTP id
 d2e1a72fcca58-73905a02b96mr28409737b3a.16.1742922027226; 
 Tue, 25 Mar 2025 10:00:27 -0700 (PDT)
Received: from ?IPV6:2409:4080:119f:3ad6:66e:eb88:9ca5:b5e6?
 ([2409:4080:119f:3ad6:66e:eb88:9ca5:b5e6])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-af8a284695dsm9386261a12.44.2025.03.25.10.00.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Mar 2025 10:00:26 -0700 (PDT)
Message-ID: <31800f57-2fd5-4e9b-a301-36a67ba27210@gmail.com>
Date: Tue, 25 Mar 2025 22:30:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Al Viro <viro@zeniv.linux.org.uk>
References: <20250322142134.35325-1-purvayeshi550@gmail.com>
 <20250322143549.GH2023217@ZenIV>
Content-Language: en-US
In-Reply-To: <20250322143549.GH2023217@ZenIV>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 22/03/25 20:05, Al Viro wrote: > On Sat, Mar 22, 2025 at
 07:51:34PM +0530,
 Purva Yeshi wrote: >> Bug detected by Syzbot: >> BUG: sleeping
 function called from invalid context in jfs_fsync >> >> Fix [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.171 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.171 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.171 listed in sa-trusted.bondedsender.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [purvayeshi550[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [purvayeshi550[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tx7dm-00049X-30
Subject: Re: [Jfs-discussion] [PATCH] fs: jfs: Avoid sleeping function call
 in softirq
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
From: Purva Yeshi via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Purva Yeshi <purvayeshi550@gmail.com>
Cc: syzbot+219127d0a3bce650e1b6@syzkaller.appspotmail.com,
 Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 22/03/25 20:05, Al Viro wrote:
> On Sat, Mar 22, 2025 at 07:51:34PM +0530, Purva Yeshi wrote:
>> Bug detected by Syzbot:
>> BUG: sleeping function called from invalid context in jfs_fsync
>>
>> Fix jfs_fsync() to avoid sleeping in softirq/atomic, preventing crash.
>> Skip execution in softirq/atomic and return -EWOULDBLOCK to prevent issues.
>> Correct generic_file_fsync() call to pass the required arguments properly.
> 
> _ANY_ ->fsync() instance may sleep; adding that bandaid in jfs one does
> not fix anything - the realy bug is whatever leads to having that
> *called* in such conditions (e.g. having an unbalanced spin_lock()
> somewhere, etc.)
> 
> NAK.

Thanks for the review. Based on your feedback, I have analyzed the call 
path leading to fsync() being invoked in an invalid context. The issue 
arises because generic_write_sync() is being called inside 
dio_complete(), which can be triggered from dio_bio_end_aio().

dio_bio_end_aio() executes as a bio completion handler, which may run in 
a SoftIRQ context. If dio_complete() is called directly (without 
deferring), generic_write_sync() gets executed within SoftIRQ, which is 
problematic since fsync() (invoked later) may sleep.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
